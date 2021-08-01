import 'dart:async';
import 'dart:ffi';

import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:protobuf/protobuf.dart';
import 'package:subsocial_sdk/allo_isolate.dart';
import 'package:subsocial_sdk/ffi.dart';
import 'package:subsocial_sdk/utils.dart';
import 'package:subsocial_sdk/extensions.dart';
import 'package:subsocial_sdk/generated/def.pb.dart';

export 'generated/def.pb.dart';
export 'generated/def.pbenum.dart';
export 'ipfs.dart';
export 'json_models.dart';

typedef PostId = int;
typedef SpaceId = int;
typedef ReactionId = int;

class Subsocial {
  static Subsocial? _instance;
  late final RawSubsoical _raw;
  Subsocial._(this._raw);
  static Future<Subsocial> get instance async {
    if (_instance == null) {
      final dl = _load();
      final raw = RawSubsoical(dl);
      AlloIsolate(lib: dl).hook();
      final completer = Completer<dynamic>();
      final port = singleCompletePort(completer);
      final config = malloc.call<SubscoialConfig>();
      config.ref.url = "wss://rpc.subsocial.network".toNativeUtf8().cast();
      final result = raw.subsocial_init_client(
        port.nativePort,
        config,
      );
      _assertOk(result);
      final res = await completer.future;
      if (res is String) {
        throw SubxtException(res);
      }
      _instance = Subsocial._(raw);
      return _instance!;
    } else {
      return _instance!;
    }
  }

  Future<Space> spaceById(SpaceId id) async {
    final req = Request(
      spaceById: GetSpaceById(spaceId: makeLongInt(id)),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpaceById();
    return val.space;
  }

  Future<Space> spaceByHandle(String handle) async {
    final req = Request(
      spaceByHandle: GetSpaceByHandle(handle: handle),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpaceByHandle();
    return val.space;
  }

  Future<Post> postById(PostId id) async {
    final req = Request(
      postById: GetPostById(postId: makeLongInt(id)),
    );
    final res = await _dispatch(req);
    final val = res.ensurePostById();
    return val.post;
  }

  Future<Reaction> reactionById(ReactionId id) async {
    final req = Request(
      reactionById: GetReactionById(reactionId: makeLongInt(id)),
    );
    final res = await _dispatch(req);
    final val = res.ensureReactionById();
    return val.reaction;
  }

  Future<List<PostId>> postsIdsBySpaceId(SpaceId id) async {
    final req = Request(
      postIdsBySpaceId: GetPostIdsBySpaceId(spaceId: makeLongInt(id)),
    );
    final res = await _dispatch(req);
    final val = res.ensurePostIdsBySpaceId();
    return val.postIds.map((e) => e.toInt()).toList();
  }

  Future<List<ReactionId>> reactionIdsByPostId(PostId id) async {
    final req = Request(
      reactionIdsByPostId: GetReactionIdsByPostId(postId: makeLongInt(id)),
    );
    final res = await _dispatch(req);
    final val = res.ensureReactionIdsByPostId();
    return val.reactionIds.map((e) => e.toInt()).toList();
  }

  Future<List<PostId>> replyIdsByPostId(PostId id) async {
    final req = Request(
      replyIdsByPostId: GetReplyIdsByPostId(postId: makeLongInt(id)),
    );
    final res = await _dispatch(req);
    final val = res.ensureReplyIdsByPostId();
    return val.replyIds.map((e) => e.toInt()).toList();
  }

  Future<SocialAccount> socialAccountByAccountId(String accountId) async {
    final req = Request(
      socialAccountByAccountId: GetSocialAccountByAccountId(
        accountId: accountId,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensureSocialAccountByAccountId();
    return val.socialAccount;
  }

  Future<SpaceId> nextSpaceId() async {
    final req = Request(nextSpaceId: GetNextSpaceId());
    final res = await _dispatch(req);
    final val = res.ensureNextSpaceId();
    return val.id.toInt();
  }

  Future<PostId> nextPostId() async {
    final req = Request(nextPostId: GetNextPostId());
    final res = await _dispatch(req);
    final val = res.ensureNextPostId();
    return val.id.toInt();
  }

  void dispose() {
    final result = _raw.subsocial_shutdown();
    _assertOk(result);
    _instance = null;
  }

  Future<Response> _dispatch(Request req) async {
    final completer = Completer<List<int>>();
    final port = singleCompletePort(completer);
    final ptr = req.writeToBuffer().asSharedBufferPtr();
    final result = _raw.subsocial_dispatch(port.nativePort, ptr);
    _assertOk(result);
    final resBytes = await completer.future;
    final res = Response.fromBuffer(resBytes);
    if (res.hasError()) {
      throw res.error;
    }
    return res;
  }
}

class BadProtoMessageException implements Exception {}

class ClientNotInitializedException implements Exception {}

class SubxtException implements Exception {
  final String message;
  const SubxtException(this.message);
  @override
  String toString() {
    return 'SubxtException($message)';
  }
}

void _assertOk(int result) {
  if (result == 0xbadc0de) {
    throw BadProtoMessageException();
  } else if (result == 0xdead) {
    throw ClientNotInitializedException();
  } else {
    // all good
  }
}

/// Loads the Subsocial [DynamicLibrary] depending on the [Platform]
DynamicLibrary _load() {
  if (Platform.isAndroid) {
    return DynamicLibrary.open('libsubsocial.so');
  } else if (Platform.isIOS) {
    return DynamicLibrary.executable();
  } else if (Platform.isLinux) {
    return DynamicLibrary.open('target/debug/libsubsocial.so');
  } else if (Platform.isMacOS) {
    return DynamicLibrary.open('target/debug/libsubsocial.dylib');
  } else {
    throw UnsupportedError('The Current Platform is not supported.');
  }
}
