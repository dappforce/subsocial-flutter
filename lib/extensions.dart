import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart' as ffi;

import 'ffi.dart' as ffi;

extension ArrayView on Uint8List {
  Pointer<ffi.ArrayView> asArrayViewPtr() {
    final ptr = ffi.malloc.allocate<Uint8>(length)
      ..asTypedList(length).setAll(0, this);

    final buf = ffi.malloc<ffi.ArrayView>();
    buf.ref
      ..buf = ptr
      ..len = length;
    return buf;
  }
}
