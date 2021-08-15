import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data' as typed_data;

import 'package:ffi/ffi.dart';
import 'package:protobuf/protobuf.dart';
import 'package:subsocial_sdk/allo_isolate.dart';
import 'package:subsocial_sdk/ffi.dart';
import 'package:subsocial_sdk/ffi_ext.dart';
import 'package:subsocial_sdk/generated/def.pb.dart';
import 'package:subsocial_sdk/utils.dart';

export 'generated/def.pb.dart';
export 'generated/def.pbenum.dart';
export 'ipfs.dart';
export 'json_models.dart';
export 'multi_query.dart';

typedef PostId = int;
typedef SpaceId = int;
typedef ReactionId = int;
typedef AccountId = String;

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
      final config = malloc.call<SubscoialConfig>()
        ..ref.url = "wss://rpc.subsocial.network".toNativeUtf8().cast();
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

  Future<List<SpaceId>> spaceIdsByOwner(AccountId accountId) async {
    final req = Request(
      spaceIdsByOwner: GetSpaceIdsByOwner(
        accountId: accountId,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpaceIdsByOwner();
    return val.spaceIds.map((e) => e.toInt()).toList();
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

  Future<SocialAccount> socialAccountByAccountId(AccountId accountId) async {
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

  Future<List<AccountId>> spaceFollowers(SpaceId spaceId) async {
    final req = Request(
      spaceFollowers: GetSpaceFollowers(spaceId: makeLongInt(spaceId)),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpaceFollowers();
    return val.accountIds;
  }

  Future<List<SpaceId>> spacesFollowedByAccount(AccountId accountId) async {
    final req = Request(
      spacesFollowedByAccount: GetSpacesFollowedByAccount(
        accountId: accountId,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpacesFollowedByAccount();
    return val.spaceIds.map((e) => e.toInt()).toList();
  }

  Future<List<AccountId>> accountFollowers(AccountId accountId) async {
    final req = Request(
      accountFollowers: GetAccountFollowers(accountId: accountId),
    );
    final res = await _dispatch(req);
    final val = res.ensureAccountFollowers();
    return val.accountIds;
  }

  Future<List<AccountId>> accountsFollowedByAccount(AccountId accountId) async {
    final req = Request(
      accountsFollowedByAccount: GetAccountsFollowedByAccount(
        accountId: accountId,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensureAccountsFollowedByAccount();
    return val.accountIds;
  }

  /// Generates new Account and sets this account as the default account
  /// for signing transactions.
  Future<GeneratedAccount> generateAccount({String? password}) async {
    final req = Request(generateAccount: GenerateAccount(password: password));
    final res = await _dispatch(req);
    final val = res.ensureGeneratedAccount();
    return val;
  }

  /// Imports already generated Account and sets this account as the default account
  /// for signing transactions, replacing any already accounts if there is any.
  ///
  /// Interprets the string `suri` in order to generate a key Pair.
  /// Returns both the pair and an optional seed, in the
  /// case that the pair can be expressed as a direct derivation from a seed (some cases, such as Sr25519 derivations
  /// with path components, cannot).
  ///
  /// This takes a helper function to do the key generation from a phrase, password and
  /// junction iterator.
  ///
  /// - If `suri` is a possibly `0x` prefixed 64-digit hex string, then it will be interpreted
  /// directly as a `MiniSecretKey` (aka "seed" in `subkey`).
  /// - If `suri` is a valid BIP-39 key phrase of 12, 15, 18, 21 or 24 words, then the key will
  /// be derived from it. In this case:
  ///   - the phrase may be followed by one or more items delimited by `/` characters.
  ///   - the path may be followed by `///`, in which case everything after the `///` is treated
  /// as a password.
  /// - If `suri` begins with a `/` character it is prefixed with the Substrate public `DEV_PHRASE` and
  /// interpreted as above.
  ///
  /// In this case they are interpreted as HDKD junctions; purely numeric items are interpreted as
  /// integers, non-numeric items as strings. Junctions prefixed with `/` are interpreted as soft
  /// junctions, and with `//` as hard junctions.
  ///
  /// There is no correspondence mapping between SURI strings and the keys they represent.
  /// Two different non-identical strings can actually lead to the same secret being derived.
  /// Notably, integer junction indices may be legally prefixed with arbitrary number of zeros.
  /// Similarly an empty password (ending the SURI with `///`) is perfectly valid and will generally
  /// be equivalent to no password at all.
  ///
  /// `None` is returned if no matches are found.
  Future<ImportedAccount> importAccount({
    required String suri,
    String? password,
  }) async {
    final req = Request(
      importAccount: ImportAccount(
        password: password,
        suri: suri,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensureImportedAccount();
    return val;
  }

  void dispose() {
    // currently, there is nothing to dispose.
  }

  Future<Response> _dispatch(Request req) async {
    final completer = Completer<typed_data.Uint8List>();
    final port = singleCompletePort(completer);
    final buffer = req.writeToBuffer().asPtr();
    final result = _raw.subsocial_dispatch(port.nativePort, buffer);
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
