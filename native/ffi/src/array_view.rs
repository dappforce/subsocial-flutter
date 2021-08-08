use std::ptr::NonNull;

/// Immutable View of Array of bytes.
#[repr(C)]
pub struct ArrayView {
    buf: NonNull<u8>,
    len: usize,
}

impl ArrayView {
    pub fn as_slice(&self) -> &[u8] {
        unsafe { core::slice::from_raw_parts(self.buf.as_ptr(), self.len) }
    }
}
