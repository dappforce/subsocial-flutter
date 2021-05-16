import 'dart:async';
import 'dart:ffi';

import 'dart:io';

import 'package:subsocial_sdk/allo_isolate.dart';
import 'package:subsocial_sdk/ffi.dart';
import 'package:subsocial_sdk/utils.dart';

class Subsocial {
  static Subsocial? _instance;
  late final RawSubsoical _raw;
  Subsocial._(this._raw);
  static Future<Subsocial> get instance async {
    if (_instance == null) {
      final dl = _load();
      final raw = RawSubsoical(dl);
      AlloIsolate(lib: dl).hook();
      final completer = Completer<int>();
      final port = singleCompletePort(completer);
      final result = raw.subsoical_init_client(port.nativePort);
      assert(result == 1);
      await completer.future;
      return _instance = Subsocial._(raw);
    } else {
      return _instance!;
    }
  }
}

/// Loads the Subsocial [DynamicLibrary] depending on the [Platform]
DynamicLibrary _load() {
  if (Platform.isAndroid) {
    return DynamicLibrary.open('libsubsoical.so');
  } else if (Platform.isIOS) {
    return DynamicLibrary.executable();
  } else {
    throw UnsupportedError('The Current Platform is not supported.');
  }
}
