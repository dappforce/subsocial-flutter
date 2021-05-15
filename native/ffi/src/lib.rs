mod pb;
mod shared_buffer;

use pb::subsoical;
use prost::Message;
use shared_buffer::SharedBuffer;

#[no_mangle]
pub extern "C" fn subsoical_init_client() {}

#[no_mangle]
pub extern "C" fn subsocial_dispatch(
    ptr: Option<Box<SharedBuffer>>,
) -> Box<SharedBuffer> {
    let req: subsoical::Request = match ptr {
        Some(value) => match prost::Message::decode(value.as_slice()) {
            Ok(v) => v,
            Err(_) => {
                let mut err = subsoical::Error::default();
                err.set_kind(subsoical::error::Kind::Unknown);
                let mut bytes = Vec::new();
                err.encode(&mut bytes).expect("should never fails");
                let buffer = SharedBuffer::from(bytes);
                return Box::new(buffer);
            },
        },
        None => return Box::new(SharedBuffer::default()),
    };
    dbg!(req);
    // let handler = RequestHandler::new(&CLIENT);
    // TODO(@shekohex): build handler system for the ffi.
    Box::new(Default::default())
}

#[no_mangle]
pub extern "C" fn subsocial_release_shared_buffer(
    ptr: Option<Box<SharedBuffer>>,
) {
    if let Some(value) = ptr {
        value.release()
    }
}

/// a no-op function that forces xcode to link to our lib.
/// ## Safety
/// lol
#[inline(never)]
#[no_mangle]
pub unsafe extern "C" fn subsocial_link_me_plz() {}
