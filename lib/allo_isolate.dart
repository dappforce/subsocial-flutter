import 'dart:ffi';

// ignore: avoid_private_typedef_functions
typedef _store_dart_post_cobject_C = Void Function(
  Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>> ptr,
);

// ignore: avoid_private_typedef_functions
typedef _store_dart_post_cobject_Dart = void Function(
  Pointer<NativeFunction<Int8 Function(Int64, Pointer<Dart_CObject>)>> ptr,
);

/// `allo-isolate` Rust crate bindings.
class AlloIsolate {
  late final DynamicLibrary lib;
  // ignore: non_constant_identifier_names
  _store_dart_post_cobject_Dart? _store_dart_post_cobject;

  AlloIsolate({required this.lib});

  // ignore: non_constant_identifier_names
  void hook() {
    _store_dart_post_cobject ??= lib.lookupFunction<_store_dart_post_cobject_C,
        _store_dart_post_cobject_Dart>('store_dart_post_cobject');
    _store_dart_post_cobject?.call(NativeApi.postCObject);
  }
}
