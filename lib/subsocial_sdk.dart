import 'dart:async';
import 'dart:ffi';

import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:protobuf/protobuf.dart';
import 'package:subsocial_sdk/allo_isolate.dart';
import 'package:subsocial_sdk/ffi.dart';
import 'package:subsocial_sdk/utils.dart';
import 'package:subsocial_sdk/extensions.dart';

import 'generated/def.pb.dart';
export 'generated/def.pb.dart';

class Subsocial {
  static Subsocial? _instance;
  late final RawSubsoical _raw;
  Subsocial._(this._raw);
  static Future<Subsocial> get instance async {
    if (_instance == null) {
      final dl = _load();
      final raw = RawSubsoical(dl);
      AlloIsolate(lib: dl).hook();
      final completer = Completer<void>();
      final port = singleCompletePort(completer);
      final config = malloc.call<SubscoialConfig>();
      config.ref.url = "wss://rpc.subsocial.network".toNativeUtf8().cast();
      final result = raw.subsocial_init_client(
        port.nativePort,
        config,
      );
      assert(result == 1);
      await completer.future;
      return _instance = Subsocial._(raw);
    } else {
      return _instance!;
    }
  }

  Future<Space> spaceById(int id) async {
    final completer = Completer<List<int>>();
    final port = singleCompletePort(completer);
    final req = Request(
      spaceById: GetSpaceById(spaceId: makeLongInt(id)),
    );
    final ptr = req.writeToBuffer().asSharedBufferPtr();
    final result = _raw.subsocial_dispatch(port.nativePort, ptr);
    assert(result == 1);
    final resBytes = await completer.future;
    final res = Response.fromBuffer(resBytes);
    return res.spaceById.space;
  }
}

/// Loads the Subsocial [DynamicLibrary] depending on the [Platform]
DynamicLibrary _load() {
  if (Platform.isAndroid) {
    return DynamicLibrary.open('libsubsocial.so');
  } else if (Platform.isIOS) {
    return DynamicLibrary.executable();
  } else if (Platform.isLinux) {
    return DynamicLibrary.open('target/debug/libsubscoial.so');
  } else if (Platform.isMacOS) {
    return DynamicLibrary.open('target/debug/libsubscoial.dylib');
  } else {
    throw UnsupportedError('The Current Platform is not supported.');
  }
}
