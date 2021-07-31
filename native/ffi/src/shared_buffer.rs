use std::mem::ManuallyDrop;
use std::ptr::NonNull;

/// Immutable View of Shared Buffer.
#[repr(C)]
pub struct SharedBuffer {
    buf: NonNull<u8>,
    len: usize,
}

impl Default for SharedBuffer {
    fn default() -> Self {
        Vec::new().into()
    }
}

impl SharedBuffer {
    pub fn as_slice(&self) -> &[u8] {
        unsafe { core::slice::from_raw_parts(self.buf.as_ptr(), self.len) }
    }

    /// Release the underlying buffer.
    ///
    /// ## Note
    /// Only call this function if you own the underlying buffer.
    pub fn release(&self) {
        let _ = unsafe {
            Vec::from_raw_parts(self.buf.as_ptr(), self.len, self.len)
        };
    }
}

impl From<Vec<u8>> for SharedBuffer {
    fn from(buf: Vec<u8>) -> Self {
        let (ptr, len) = {
            let mut v = ManuallyDrop::new(buf);
            (v.as_mut_ptr(), v.len())
        };
        Self {
            buf: NonNull::new(ptr).expect("never null"),
            len,
        }
    }
}
