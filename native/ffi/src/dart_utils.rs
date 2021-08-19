use std::ptr::NonNull;

/// Owned version of Dart's [Uint8List] in Rust.
///
/// **Note**: Automatically frees the underlying memory allocated from Dart.
#[repr(C)]
pub struct Uint8List {
    buf: NonNull<u8>,
    len: usize,
}

impl AsRef<[u8]> for Uint8List {
    fn as_ref(&self) -> &[u8] {
        self.as_slice()
    }
}

impl Uint8List {
    pub fn as_slice(&self) -> &[u8] {
        unsafe { core::slice::from_raw_parts(self.buf.as_ptr(), self.len) }
    }
}

impl Drop for Uint8List {
    fn drop(&mut self) {
        let owned = unsafe {
            Vec::from_raw_parts(self.buf.as_ptr(), self.len, self.len)
        };
        drop(owned);
    }
}
