use std::ffi::CStr;
use std::os::raw::c_char;

use allo_isolate::Isolate;
use async_std::task;
use once_cell::sync::OnceCell;
use sdk::runtime::SubsocialRuntime;
use sdk::subxt;

mod dart_utils;
mod handler;
mod pb;
mod transformer;

use dart_utils::Uint8List;
use pb::subsocial;
use prost::Message;
use sdk::subxt::sp_core::sr25519::Pair as Sr25519Pair;

/// Global Shared [subxt::Client] between all tasks.
static CLIENT: OnceCell<subxt::Client<SubsocialRuntime>> = OnceCell::new();
/// Global Shared [subxt::PairSigner] between all tasks.
static mut SIGNER: OnceCell<subxt::PairSigner<SubsocialRuntime, Sr25519Pair>> =
    OnceCell::new();

#[derive(Debug, Clone)]
#[repr(C)]
pub struct SubscoialConfig {
    url: *const c_char,
}

#[no_mangle]
pub extern "C" fn subsocial_init_client(
    port: i64,
    config: Box<SubscoialConfig>,
) -> i32 {
    let isolate = Isolate::new(port);
    // check if we already have a client
    if CLIENT.get().is_some() {
        isolate.post(());
        return 1; // we are good!
    }
    let url = unsafe {
        CStr::from_ptr(config.url)
            .to_str()
            .unwrap_or("wss://rpc.subsocial.network")
    };
    let task = isolate.catch_unwind(async move {
        let client = subxt::ClientBuilder::new().set_url(url).build().await?;
        CLIENT.set(client).map_err(|_| {
            subxt::Error::Other(String::from("Client already initialized"))
        })?;
        Result::<_, subxt::Error>::Ok(())
    });
    task::spawn(task);
    1
}

#[no_mangle]
pub extern "C" fn subsocial_dispatch(port: i64, buffer: Box<Uint8List>) -> i32 {
    let isolate = Isolate::new(port);
    let req = match prost::Message::decode(buffer.as_slice()) {
        Ok(v) => v,
        Err(e) => {
            let mut bytes = Vec::new();
            let kind = subsocial::error::Kind::InvalidProto.into();
            subsocial::Error {
                kind,
                msg: e.to_string(),
            }
            .encode(&mut bytes)
            .expect("should never fails");
            isolate.post(bytes);
            return 0xbadc0de;
        }
    };
    let client = match CLIENT.get() {
        Some(v) => v,
        None => return 0xdead,
    };
    let task = isolate.catch_unwind(handler::handle(client, req));
    task::spawn(task);
    1
}

/// a no-op function that forces xcode to link to our lib.
/// ## Safety
/// lol
#[inline(never)]
#[no_mangle]
pub unsafe extern "C" fn subsocial_link_me_plz() {}
