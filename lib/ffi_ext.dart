import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart' as ffi;

import 'ffi.dart' as ffi;

extension Uint8ListAsPtr on Uint8List {
  Pointer<ffi.Uint8List> asPtr() {
    final ptr = ffi.malloc.allocate<Uint8>(length)
      ..asTypedList(length).setAll(0, this);

    final buf = ffi.malloc<ffi.Uint8List>();
    buf.ref
      ..buf = ptr
      ..len = length;
    return buf;
  }
}
