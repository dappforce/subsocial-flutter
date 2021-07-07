import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:ffi/ffi.dart' as ffi;

import 'ffi.dart' as ffi;

extension SharedBuffer on Uint8List {
  Pointer<ffi.SharedBuffer> asSharedBufferPtr() {
    final ptr = ffi.malloc.allocate<Uint8>(length)
      ..asTypedList(length).setAll(0, this);

    final buf = ffi.malloc<ffi.SharedBuffer>();
    buf.ref
      ..buf = ptr
      ..len = length;
    return buf;
  }
}

extension Uint8ListBuffer on Pointer<ffi.SharedBuffer> {
  Uint8List asUint8List() {
    final view = ref.buf.asTypedList(ref.len);
    final builder = BytesBuilder(copy: false)..add(view);
    final bytes = builder.takeBytes();
    ffi.malloc.free(this);
    return bytes;
  }
}
