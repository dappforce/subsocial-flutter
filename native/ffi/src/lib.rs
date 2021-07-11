mod handler;
mod pb;
mod shared_buffer;
mod transformer;

use std::ffi::CStr;
use std::os::raw::c_char;

use allo_isolate::Isolate;
use async_std::task;
use once_cell::sync::OnceCell;
use sdk::runtime::SubsocialRuntime;
use sdk::subxt;

use pb::subsocial;
use prost::Message;
use shared_buffer::SharedBuffer;

static mut CLIENT: OnceCell<subxt::Client<SubsocialRuntime>> = OnceCell::new();

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
    if unsafe { CLIENT.get().is_some() } {
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
        unsafe {
            CLIENT.set(client).map_err(|_| {
                subxt::Error::Other(String::from("Client already initialized"))
            })
        }?;
        Result::<_, subxt::Error>::Ok(())
    });
    task::spawn(task);
    1
}

#[no_mangle]
pub extern "C" fn subsocial_dispatch(port: i64, ptr: Box<SharedBuffer>) -> i32 {
    let isolate = Isolate::new(port);
    let req: subsocial::Request = match prost::Message::decode(ptr.as_slice()) {
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
        },
    };
    let client = match unsafe { CLIENT.get() } {
        Some(v) => v,
        None => return 0xdead,
    };
    let task = isolate.catch_unwind(handler::handle(client, req));
    task::spawn(task);
    1
}

#[no_mangle]
pub extern "C" fn subsocial_shutdown() -> i32 {
    match unsafe { CLIENT.take() } {
        Some(client) => {
            drop(client);
            1
        },
        None => 0xdead,
    }
}

/// a no-op function that forces xcode to link to our lib.
/// ## Safety
/// lol
#[inline(never)]
#[no_mangle]
pub unsafe extern "C" fn subsocial_link_me_plz() {}
