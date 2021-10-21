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
      final result = raw.subsocial_init_sdk(
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

  Future<ReactionId> postReactionIdByAccount({
    required PostId postId,
    required AccountId accountId,
  }) async {
    final req = Request(
      postReactionIdByAccount: GetPostReactionIdByAccount(
        postId: makeLongInt(postId),
        accountId: accountId,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensurePostReactionIdByAccount();
    return val.reactionId.toInt();
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

  Future<AccountData> queryAccountData(AccountId accountId) async {
    final req = Request(
      queryAccountData: QueryAccountData(
        accountId: accountId,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensureAccountData();
    return val;
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

  Future<CurrentAccountId> currentAccountId() async {
    final req = Request(currentAccountId: GetCurrentAccountId());
    final res = await _dispatch(req);
    final val = res.ensureCurrentAccountId();
    return val;
  }

  Future<ProfileCreated> createProfile({required Content content}) async {
    final req = Request(createProfile: CreateProfile(content: content));
    final res = await _dispatch(req);
    final val = res.ensureProfileCreated();
    return val;
  }

  Future<ProfileUpdated> updateProfile({Content? content}) async {
    final req = Request(updateProfile: UpdateProfile(maybeContent: content));
    final res = await _dispatch(req);
    final val = res.ensureProfileUpdated();
    return val;
  }

  Future<PostReactionCreated> createPostReaction({
    required PostId postId,
    required Reaction_Kind kind,
  }) async {
    final req = Request(
      createPostReaction: CreatePostReaction(
        postId: makeLongInt(postId),
        kind: kind,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensurePostReactionCreated();
    return val;
  }

  Future<PostReactionUpdated> updatePostReaction({
    required PostId postId,
    required ReactionId reactionId,
    required Reaction_Kind kind,
  }) async {
    final req = Request(
      updatePostReaction: UpdatePostReaction(
        postId: makeLongInt(postId),
        reactionId: makeLongInt(reactionId),
        newKind: kind,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensurePostReactionUpdated();
    return val;
  }

  Future<PostReactionDeleted> deletePostReaction({
    required PostId postId,
    required ReactionId reactionId,
  }) async {
    final req = Request(
      deletePostReaction: DeletePostReaction(
        postId: makeLongInt(postId),
        reactionId: makeLongInt(reactionId),
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensurePostReactionDeleted();
    return val;
  }

  Future<PostCreated> createPost({
    required PostExtension extensionValue,
    required Content content,
    SpaceId? spaceId,
  }) async {
    final req = Request(
      createPost: CreatePost(
        spaceId: spaceId != null ? makeLongInt(spaceId) : null,
        content: content,
        extensionValue: extensionValue,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensurePostCreated();
    return val;
  }

  Future<PostUpdated> updatePost({
    required PostId postId,
    Content? content,
    bool? hidden,
  }) async {
    final req = Request(
      updatePost: UpdatePost(
        postId: makeLongInt(postId),
        postUpdate: PostUpdate(content: content, hidden: hidden),
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensurePostUpdated();
    return val;
  }

  Future<SpaceFollowed> followSpace({required SpaceId spaceId}) async {
    final req = Request(
      followSpace: FollowSpace(spaceId: makeLongInt(spaceId)),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpaceFollowed();
    return val;
  }

  Future<SpaceUnfollowed> unfollowSpace({required SpaceId spaceId}) async {
    final req = Request(
      unfollowSpace: UnfollowSpace(spaceId: makeLongInt(spaceId)),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpaceUnfollowed();
    return val;
  }

  Future<SpaceCreated> createSpace({
    SpaceId? parentId,
    String? handle,
    required Content content,
  }) async {
    final req = Request(
      createSpace: CreateSpace(
        parentId: parentId != null ? makeLongInt(parentId) : null,
        handle: handle,
        content: content,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpaceCreated();
    return val;
  }

  Future<SpaceUpdated> updateSpace({
    required SpaceId spaceId,
    required SpaceUpdate update,
  }) async {
    final req = Request(
      updateSpace: UpdateSpace(
        spaceId: makeLongInt(spaceId),
        update: update,
      ),
    );
    final res = await _dispatch(req);
    final val = res.ensureSpaceUpdated();
    return val;
  }

  Future<AccountFollowed> followAccount({
    required AccountId accountId,
  }) async {
    final req = Request(
      followAccount: FollowAccount(accountId: accountId),
    );
    final res = await _dispatch(req);
    final val = res.ensureAccountFollowed();
    return val;
  }

  Future<AccountUnfollowed> unfollowAccount({
    required AccountId accountId,
  }) async {
    final req = Request(
      unfollowAccount: UnfollowAccount(accountId: accountId),
    );
    final res = await _dispatch(req);
    final val = res.ensureAccountUnfollowed();
    return val;
  }

  Future<bool> isAccountFollower({required AccountId accountId}) async {
    final req = Request(
      isAccountFollower: IsAccountFollower(accountId: accountId),
    );
    final res = await _dispatch(req);
    return res.isAccountFollower;
  }

  Future<bool> isSpaceFollower({required SpaceId spaceId}) async {
    final req = Request(
      isSpaceFollower: IsSpaceFollower(spaceId: makeLongInt(spaceId)),
    );
    final res = await _dispatch(req);
    return res.isSpaceFollower;
  }

  Future<bool> isPostSharedByAccount({required PostId postId}) async {
    final req = Request(
      isPostSharedByAccount: IsPostSharedByAccount(postId: makeLongInt(postId)),
    );
    final res = await _dispatch(req);
    return res.isPostSharedByAccount;
  }

  /// Clear-out the current Signer from the memory.
  /// to set the signer again, call the `importAccount` method.
  void clearSigner() {
    _raw.subsocial_dispose_signer();
  }

  /// Dispose everything.
  /// Note: This would cancel all the requests, and clear out
  /// the current signer from the memory.
  void dispose() {
    _raw.subsocial_dispose_client();
    _raw.subsocial_dispose_signer();
    // set the instance to be null.
    // so next time we call the SDK
    // it should create new instance.
    _instance = null;
  }

  Future<Response> _dispatch(Request req) async {
    final completer = Completer<typed_data.Uint8List>();
    final port = singleCompletePort(completer);
    // automaticlly freed in the rust side.
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
