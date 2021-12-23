use std::ffi::CStr;
use std::os::raw::c_char;

use allo_isolate::Isolate;
use once_cell::sync::OnceCell;
use sdk::subsocial::{DefaultConfig, RuntimeApi};
use sdk::subxt;

mod dart_utils;
mod handler;
mod pallet;
mod pb;
mod transformer;

use dart_utils::Uint8List;
use pb::subsocial;
use prost::Message;
use sdk::subxt::sp_core::sr25519::Pair as Sr25519Pair;

type SubsocialApi = RuntimeApi<DefaultConfig>;
type Signer = subxt::PairSigner<DefaultConfig, Sr25519Pair>;

/// Global Tokio Runtime.
static mut RUNTIME: OnceCell<tokio::runtime::Runtime> = OnceCell::new();

/// Global Shared [subxt::Client] between all tasks.
static mut CLIENT: OnceCell<SubsocialApi> = OnceCell::new();

/// Global Shared [subxt::PairSigner] between all tasks.
static mut SIGNER: OnceCell<Signer> = OnceCell::new();

#[derive(Debug, Clone)]
#[repr(C)]
pub struct SubscoialConfig {
    url: *const c_char,
}
/// Init the SDK
///
/// ### Safety
/// This should only called once, in the beginning of the application.
/// otherwise it would be **UB** if called more than once while there is other calls to the SDK.
///
/// However, you can call this again, if you disposed the client and the signer.
///
/// We added checks as a safety mechanism, to ensure no undefined behavior would happen,
/// but take care that not all paths are tested here.
#[no_mangle]
pub unsafe extern "C" fn subsocial_init_sdk(
    port: i64,
    config: Box<SubscoialConfig>,
) -> i32 {
    let isolate = Isolate::new(port);
    // check if we already have a client
    if CLIENT.get().is_some() {
        isolate.post(());
        return 1; // we are good!
    }
    let url = CStr::from_ptr(config.url)
        .to_str()
        .unwrap_or("wss://rpc.subsocial.network:443");
    // only init it with default value once.
    if SIGNER.get().is_none() {
        let _ = SIGNER.set(dummy_signer());
    }
    // init the runtime if not already done
    let runtime = RUNTIME.get_or_init(create_runtime);
    let task = isolate.catch_unwind(async move {
        let client = subxt::ClientBuilder::new()
            .set_url(url)
            .build()
            .await?
            .to_runtime_api();
        CLIENT.set(client).map_err(|_| {
            subxt::Error::Other(String::from("Client already initialized"))
        })?;
        Result::<_, subxt::Error>::Ok(())
    });
    runtime.spawn(task);
    1
}

#[no_mangle]
pub extern "C" fn subsocial_dispatch(port: i64, buffer: Box<Uint8List>) -> i32 {
    let isolate = Isolate::new(port);
    let req = match prost::Message::decode(buffer.as_slice()) {
        Ok(v) => v,
        Err(e) => {
            let mut msg = Vec::new();
            let kind = subsocial::error::Kind::InvalidProto.into();
            subsocial::Error {
                kind,
                msg: e.to_string(),
            }
            .encode(&mut msg)
            .expect("should never fails");
            isolate.post(msg);
            return 0xbadc0de;
        }
    };
    let client = match unsafe { CLIENT.get() } {
        Some(v) => v,
        None => return 0xdead,
    };
    let signer = match unsafe { SIGNER.get_mut() } {
        Some(v) => v,
        None => return 0xdead,
    };
    // finaly the runtime
    let runtime = match unsafe { RUNTIME.get() } {
        Some(v) => v,
        None => return 0xdead,
    };
    let task = isolate.catch_unwind(handler::handle(client, signer, req));
    runtime.spawn(task);
    1
}

/// Dispose (a la drop) the Client and all active connections.
/// if the client is still there, it will close it and return `1`
/// otherwise, returns 0xdead.
#[no_mangle]
pub extern "C" fn subsocial_dispose_client() -> i32 {
    match unsafe { CLIENT.take() } {
        Some(old_client) => {
            // Drop it
            drop(old_client);
            1
        }
        None => 0xdead,
    }
}

/// Dispose (a la drop) the Signer and zerozie the memory.
/// if the signer is still there, it will drop it and return `1`
/// otherwise, returns 0xdead.
#[no_mangle]
pub extern "C" fn subsocial_dispose_signer() -> i32 {
    match unsafe { SIGNER.take() } {
        Some(old_signer) => {
            // it gets zeroized when it is dropped.
            drop(old_signer);
            1
        }
        None => 0xdead,
    }
}

/// a no-op function that forces xcode to link to our lib.
/// ## Safety
/// lol
#[inline(never)]
#[no_mangle]
pub unsafe extern "C" fn subsocial_link_me_plz() {}

fn dummy_signer() -> Signer {
    let (pair, _) = Sr25519Pair::from_entropy(&[0u8; 32], None);
    Signer::new(pair)
}

fn create_runtime() -> tokio::runtime::Runtime {
    tokio::runtime::Builder::new_multi_thread()
        .enable_all()
        .build()
        .unwrap()
}
