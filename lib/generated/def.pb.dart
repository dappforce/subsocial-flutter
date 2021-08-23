///
//  Generated code. Do not modify.
//  source: def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'def.pbenum.dart';

export 'def.pbenum.dart';

enum Request_Body {
  spaceById,
  spaceByHandle,
  postById,
  postIdsBySpaceId,
  reactionById,
  reactionIdsByPostId,
  replyIdsByPostId,
  socialAccountByAccountId,
  nextSpaceId,
  nextPostId,
  spaceIdsByOwner,
  spaceFollowers,
  spacesFollowedByAccount,
  accountFollowers,
  accountsFollowedByAccount,
  generateAccount,
  importAccount,
  createPostReaction,
  createPost,
  updatePost,
  followSpace,
  notSet
}

class Request extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Request_Body> _Request_BodyByTag = {
    1: Request_Body.spaceById,
    2: Request_Body.spaceByHandle,
    3: Request_Body.postById,
    4: Request_Body.postIdsBySpaceId,
    5: Request_Body.reactionById,
    6: Request_Body.reactionIdsByPostId,
    7: Request_Body.replyIdsByPostId,
    8: Request_Body.socialAccountByAccountId,
    9: Request_Body.nextSpaceId,
    10: Request_Body.nextPostId,
    11: Request_Body.spaceIdsByOwner,
    12: Request_Body.spaceFollowers,
    13: Request_Body.spacesFollowedByAccount,
    14: Request_Body.accountFollowers,
    15: Request_Body.accountsFollowedByAccount,
    16: Request_Body.generateAccount,
    17: Request_Body.importAccount,
    18: Request_Body.createPostReaction,
    19: Request_Body.createPost,
    20: Request_Body.updatePost,
    21: Request_Body.followSpace,
    0: Request_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request',
      package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'subsocial'),
      createEmptyInstance: create)
    ..oo(0,
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21])
    ..aOM<GetSpaceById>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceById',
        subBuilder: GetSpaceById.create)
    ..aOM<GetSpaceByHandle>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceByHandle',
        subBuilder: GetSpaceByHandle.create)
    ..aOM<GetPostById>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postById',
        subBuilder: GetPostById.create)
    ..aOM<GetPostIdsBySpaceId>(
        4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postIdsBySpaceId',
        subBuilder: GetPostIdsBySpaceId.create)
    ..aOM<GetReactionById>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionById', subBuilder: GetReactionById.create)
    ..aOM<GetReactionIdsByPostId>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionIdsByPostId', subBuilder: GetReactionIdsByPostId.create)
    ..aOM<GetReplyIdsByPostId>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replyIdsByPostId', subBuilder: GetReplyIdsByPostId.create)
    ..aOM<GetSocialAccountByAccountId>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'socialAccountByAccountId', subBuilder: GetSocialAccountByAccountId.create)
    ..aOM<GetNextSpaceId>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextSpaceId', subBuilder: GetNextSpaceId.create)
    ..aOM<GetNextPostId>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextPostId', subBuilder: GetNextPostId.create)
    ..aOM<GetSpaceIdsByOwner>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceIdsByOwner', subBuilder: GetSpaceIdsByOwner.create)
    ..aOM<GetSpaceFollowers>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceFollowers', subBuilder: GetSpaceFollowers.create)
    ..aOM<GetSpacesFollowedByAccount>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spacesFollowedByAccount', subBuilder: GetSpacesFollowedByAccount.create)
    ..aOM<GetAccountFollowers>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountFollowers', subBuilder: GetAccountFollowers.create)
    ..aOM<GetAccountsFollowedByAccount>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountsFollowedByAccount', subBuilder: GetAccountsFollowedByAccount.create)
    ..aOM<GenerateAccount>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'generateAccount', subBuilder: GenerateAccount.create)
    ..aOM<ImportAccount>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'importAccount', subBuilder: ImportAccount.create)
    ..aOM<CreatePostReaction>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createPostReaction', subBuilder: CreatePostReaction.create)
    ..aOM<CreatePost>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createPost', subBuilder: CreatePost.create)
    ..aOM<UpdatePost>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatePost', subBuilder: UpdatePost.create)
    ..aOM<FollowSpace>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'followSpace', subBuilder: FollowSpace.create)
    ..hasRequiredFields = false;

  Request._() : super();
  factory Request({
    GetSpaceById? spaceById,
    GetSpaceByHandle? spaceByHandle,
    GetPostById? postById,
    GetPostIdsBySpaceId? postIdsBySpaceId,
    GetReactionById? reactionById,
    GetReactionIdsByPostId? reactionIdsByPostId,
    GetReplyIdsByPostId? replyIdsByPostId,
    GetSocialAccountByAccountId? socialAccountByAccountId,
    GetNextSpaceId? nextSpaceId,
    GetNextPostId? nextPostId,
    GetSpaceIdsByOwner? spaceIdsByOwner,
    GetSpaceFollowers? spaceFollowers,
    GetSpacesFollowedByAccount? spacesFollowedByAccount,
    GetAccountFollowers? accountFollowers,
    GetAccountsFollowedByAccount? accountsFollowedByAccount,
    GenerateAccount? generateAccount,
    ImportAccount? importAccount,
    CreatePostReaction? createPostReaction,
    CreatePost? createPost,
    UpdatePost? updatePost,
    FollowSpace? followSpace,
  }) {
    final _result = create();
    if (spaceById != null) {
      _result.spaceById = spaceById;
    }
    if (spaceByHandle != null) {
      _result.spaceByHandle = spaceByHandle;
    }
    if (postById != null) {
      _result.postById = postById;
    }
    if (postIdsBySpaceId != null) {
      _result.postIdsBySpaceId = postIdsBySpaceId;
    }
    if (reactionById != null) {
      _result.reactionById = reactionById;
    }
    if (reactionIdsByPostId != null) {
      _result.reactionIdsByPostId = reactionIdsByPostId;
    }
    if (replyIdsByPostId != null) {
      _result.replyIdsByPostId = replyIdsByPostId;
    }
    if (socialAccountByAccountId != null) {
      _result.socialAccountByAccountId = socialAccountByAccountId;
    }
    if (nextSpaceId != null) {
      _result.nextSpaceId = nextSpaceId;
    }
    if (nextPostId != null) {
      _result.nextPostId = nextPostId;
    }
    if (spaceIdsByOwner != null) {
      _result.spaceIdsByOwner = spaceIdsByOwner;
    }
    if (spaceFollowers != null) {
      _result.spaceFollowers = spaceFollowers;
    }
    if (spacesFollowedByAccount != null) {
      _result.spacesFollowedByAccount = spacesFollowedByAccount;
    }
    if (accountFollowers != null) {
      _result.accountFollowers = accountFollowers;
    }
    if (accountsFollowedByAccount != null) {
      _result.accountsFollowedByAccount = accountsFollowedByAccount;
    }
    if (generateAccount != null) {
      _result.generateAccount = generateAccount;
    }
    if (importAccount != null) {
      _result.importAccount = importAccount;
    }
    if (createPostReaction != null) {
      _result.createPostReaction = createPostReaction;
    }
    if (createPost != null) {
      _result.createPost = createPost;
    }
    if (updatePost != null) {
      _result.updatePost = updatePost;
    }
    if (followSpace != null) {
      _result.followSpace = followSpace;
    }
    return _result;
  }
  factory Request.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Request.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Request copyWith(void Function(Request) updates) =>
      super.copyWith((message) => updates(message as Request))
          as Request; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  Request_Body whichBody() => _Request_BodyByTag[$_whichOneof(0)]!;
  void clearBody() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GetSpaceById get spaceById => $_getN(0);
  @$pb.TagNumber(1)
  set spaceById(GetSpaceById v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpaceById() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceById() => clearField(1);
  @$pb.TagNumber(1)
  GetSpaceById ensureSpaceById() => $_ensure(0);

  @$pb.TagNumber(2)
  GetSpaceByHandle get spaceByHandle => $_getN(1);
  @$pb.TagNumber(2)
  set spaceByHandle(GetSpaceByHandle v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSpaceByHandle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceByHandle() => clearField(2);
  @$pb.TagNumber(2)
  GetSpaceByHandle ensureSpaceByHandle() => $_ensure(1);

  @$pb.TagNumber(3)
  GetPostById get postById => $_getN(2);
  @$pb.TagNumber(3)
  set postById(GetPostById v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPostById() => $_has(2);
  @$pb.TagNumber(3)
  void clearPostById() => clearField(3);
  @$pb.TagNumber(3)
  GetPostById ensurePostById() => $_ensure(2);

  @$pb.TagNumber(4)
  GetPostIdsBySpaceId get postIdsBySpaceId => $_getN(3);
  @$pb.TagNumber(4)
  set postIdsBySpaceId(GetPostIdsBySpaceId v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPostIdsBySpaceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostIdsBySpaceId() => clearField(4);
  @$pb.TagNumber(4)
  GetPostIdsBySpaceId ensurePostIdsBySpaceId() => $_ensure(3);

  @$pb.TagNumber(5)
  GetReactionById get reactionById => $_getN(4);
  @$pb.TagNumber(5)
  set reactionById(GetReactionById v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasReactionById() => $_has(4);
  @$pb.TagNumber(5)
  void clearReactionById() => clearField(5);
  @$pb.TagNumber(5)
  GetReactionById ensureReactionById() => $_ensure(4);

  @$pb.TagNumber(6)
  GetReactionIdsByPostId get reactionIdsByPostId => $_getN(5);
  @$pb.TagNumber(6)
  set reactionIdsByPostId(GetReactionIdsByPostId v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasReactionIdsByPostId() => $_has(5);
  @$pb.TagNumber(6)
  void clearReactionIdsByPostId() => clearField(6);
  @$pb.TagNumber(6)
  GetReactionIdsByPostId ensureReactionIdsByPostId() => $_ensure(5);

  @$pb.TagNumber(7)
  GetReplyIdsByPostId get replyIdsByPostId => $_getN(6);
  @$pb.TagNumber(7)
  set replyIdsByPostId(GetReplyIdsByPostId v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasReplyIdsByPostId() => $_has(6);
  @$pb.TagNumber(7)
  void clearReplyIdsByPostId() => clearField(7);
  @$pb.TagNumber(7)
  GetReplyIdsByPostId ensureReplyIdsByPostId() => $_ensure(6);

  @$pb.TagNumber(8)
  GetSocialAccountByAccountId get socialAccountByAccountId => $_getN(7);
  @$pb.TagNumber(8)
  set socialAccountByAccountId(GetSocialAccountByAccountId v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSocialAccountByAccountId() => $_has(7);
  @$pb.TagNumber(8)
  void clearSocialAccountByAccountId() => clearField(8);
  @$pb.TagNumber(8)
  GetSocialAccountByAccountId ensureSocialAccountByAccountId() => $_ensure(7);

  @$pb.TagNumber(9)
  GetNextSpaceId get nextSpaceId => $_getN(8);
  @$pb.TagNumber(9)
  set nextSpaceId(GetNextSpaceId v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasNextSpaceId() => $_has(8);
  @$pb.TagNumber(9)
  void clearNextSpaceId() => clearField(9);
  @$pb.TagNumber(9)
  GetNextSpaceId ensureNextSpaceId() => $_ensure(8);

  @$pb.TagNumber(10)
  GetNextPostId get nextPostId => $_getN(9);
  @$pb.TagNumber(10)
  set nextPostId(GetNextPostId v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasNextPostId() => $_has(9);
  @$pb.TagNumber(10)
  void clearNextPostId() => clearField(10);
  @$pb.TagNumber(10)
  GetNextPostId ensureNextPostId() => $_ensure(9);

  @$pb.TagNumber(11)
  GetSpaceIdsByOwner get spaceIdsByOwner => $_getN(10);
  @$pb.TagNumber(11)
  set spaceIdsByOwner(GetSpaceIdsByOwner v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasSpaceIdsByOwner() => $_has(10);
  @$pb.TagNumber(11)
  void clearSpaceIdsByOwner() => clearField(11);
  @$pb.TagNumber(11)
  GetSpaceIdsByOwner ensureSpaceIdsByOwner() => $_ensure(10);

  @$pb.TagNumber(12)
  GetSpaceFollowers get spaceFollowers => $_getN(11);
  @$pb.TagNumber(12)
  set spaceFollowers(GetSpaceFollowers v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasSpaceFollowers() => $_has(11);
  @$pb.TagNumber(12)
  void clearSpaceFollowers() => clearField(12);
  @$pb.TagNumber(12)
  GetSpaceFollowers ensureSpaceFollowers() => $_ensure(11);

  @$pb.TagNumber(13)
  GetSpacesFollowedByAccount get spacesFollowedByAccount => $_getN(12);
  @$pb.TagNumber(13)
  set spacesFollowedByAccount(GetSpacesFollowedByAccount v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasSpacesFollowedByAccount() => $_has(12);
  @$pb.TagNumber(13)
  void clearSpacesFollowedByAccount() => clearField(13);
  @$pb.TagNumber(13)
  GetSpacesFollowedByAccount ensureSpacesFollowedByAccount() => $_ensure(12);

  @$pb.TagNumber(14)
  GetAccountFollowers get accountFollowers => $_getN(13);
  @$pb.TagNumber(14)
  set accountFollowers(GetAccountFollowers v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasAccountFollowers() => $_has(13);
  @$pb.TagNumber(14)
  void clearAccountFollowers() => clearField(14);
  @$pb.TagNumber(14)
  GetAccountFollowers ensureAccountFollowers() => $_ensure(13);

  @$pb.TagNumber(15)
  GetAccountsFollowedByAccount get accountsFollowedByAccount => $_getN(14);
  @$pb.TagNumber(15)
  set accountsFollowedByAccount(GetAccountsFollowedByAccount v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasAccountsFollowedByAccount() => $_has(14);
  @$pb.TagNumber(15)
  void clearAccountsFollowedByAccount() => clearField(15);
  @$pb.TagNumber(15)
  GetAccountsFollowedByAccount ensureAccountsFollowedByAccount() =>
      $_ensure(14);

  @$pb.TagNumber(16)
  GenerateAccount get generateAccount => $_getN(15);
  @$pb.TagNumber(16)
  set generateAccount(GenerateAccount v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasGenerateAccount() => $_has(15);
  @$pb.TagNumber(16)
  void clearGenerateAccount() => clearField(16);
  @$pb.TagNumber(16)
  GenerateAccount ensureGenerateAccount() => $_ensure(15);

  @$pb.TagNumber(17)
  ImportAccount get importAccount => $_getN(16);
  @$pb.TagNumber(17)
  set importAccount(ImportAccount v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasImportAccount() => $_has(16);
  @$pb.TagNumber(17)
  void clearImportAccount() => clearField(17);
  @$pb.TagNumber(17)
  ImportAccount ensureImportAccount() => $_ensure(16);

  @$pb.TagNumber(18)
  CreatePostReaction get createPostReaction => $_getN(17);
  @$pb.TagNumber(18)
  set createPostReaction(CreatePostReaction v) {
    setField(18, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasCreatePostReaction() => $_has(17);
  @$pb.TagNumber(18)
  void clearCreatePostReaction() => clearField(18);
  @$pb.TagNumber(18)
  CreatePostReaction ensureCreatePostReaction() => $_ensure(17);

  @$pb.TagNumber(19)
  CreatePost get createPost => $_getN(18);
  @$pb.TagNumber(19)
  set createPost(CreatePost v) {
    setField(19, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasCreatePost() => $_has(18);
  @$pb.TagNumber(19)
  void clearCreatePost() => clearField(19);
  @$pb.TagNumber(19)
  CreatePost ensureCreatePost() => $_ensure(18);

  @$pb.TagNumber(20)
  UpdatePost get updatePost => $_getN(19);
  @$pb.TagNumber(20)
  set updatePost(UpdatePost v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasUpdatePost() => $_has(19);
  @$pb.TagNumber(20)
  void clearUpdatePost() => clearField(20);
  @$pb.TagNumber(20)
  UpdatePost ensureUpdatePost() => $_ensure(19);

  @$pb.TagNumber(21)
  FollowSpace get followSpace => $_getN(20);
  @$pb.TagNumber(21)
  set followSpace(FollowSpace v) {
    setField(21, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasFollowSpace() => $_has(20);
  @$pb.TagNumber(21)
  void clearFollowSpace() => clearField(21);
  @$pb.TagNumber(21)
  FollowSpace ensureFollowSpace() => $_ensure(20);
}

enum Response_Body {
  error,
  spaceById,
  spaceByHandle,
  postById,
  postIdsBySpaceId,
  reactionById,
  reactionIdsByPostId,
  replyIdsByPostId,
  socialAccountByAccountId,
  nextSpaceId,
  nextPostId,
  spaceIdsByOwner,
  spaceFollowers,
  spacesFollowedByAccount,
  accountFollowers,
  accountsFollowedByAccount,
  generatedAccount,
  importedAccount,
  postReactionCreated,
  postCreated,
  postUpdated,
  spaceFollowed,
  notSet
}

class Response extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Response_Body> _Response_BodyByTag = {
    1: Response_Body.error,
    2: Response_Body.spaceById,
    3: Response_Body.spaceByHandle,
    4: Response_Body.postById,
    5: Response_Body.postIdsBySpaceId,
    6: Response_Body.reactionById,
    7: Response_Body.reactionIdsByPostId,
    8: Response_Body.replyIdsByPostId,
    9: Response_Body.socialAccountByAccountId,
    10: Response_Body.nextSpaceId,
    11: Response_Body.nextPostId,
    12: Response_Body.spaceIdsByOwner,
    13: Response_Body.spaceFollowers,
    14: Response_Body.spacesFollowedByAccount,
    15: Response_Body.accountFollowers,
    16: Response_Body.accountsFollowedByAccount,
    17: Response_Body.generatedAccount,
    18: Response_Body.importedAccount,
    19: Response_Body.postReactionCreated,
    20: Response_Body.postCreated,
    21: Response_Body.postUpdated,
    22: Response_Body.spaceFollowed,
    0: Response_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Response',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..oo(0, [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22
    ])
    ..aOM<Error>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error',
        subBuilder: Error.create)
    ..aOM<SpaceById>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceById',
        subBuilder: SpaceById.create)
    ..aOM<SpaceByHandle>(
        3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceByHandle',
        subBuilder: SpaceByHandle.create)
    ..aOM<PostById>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postById', subBuilder: PostById.create)
    ..aOM<PostIdsBySpaceId>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postIdsBySpaceId', subBuilder: PostIdsBySpaceId.create)
    ..aOM<ReactionById>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionById', subBuilder: ReactionById.create)
    ..aOM<ReactionIdsByPostId>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionIdsByPostId', subBuilder: ReactionIdsByPostId.create)
    ..aOM<ReplyIdsByPostId>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replyIdsByPostId', subBuilder: ReplyIdsByPostId.create)
    ..aOM<SocialAccountByAccountId>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'socialAccountByAccountId', subBuilder: SocialAccountByAccountId.create)
    ..aOM<NextSpaceId>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextSpaceId', subBuilder: NextSpaceId.create)
    ..aOM<NextPostId>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextPostId', subBuilder: NextPostId.create)
    ..aOM<SpaceIdsByOwner>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceIdsByOwner', subBuilder: SpaceIdsByOwner.create)
    ..aOM<SpaceFollowers>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceFollowers', subBuilder: SpaceFollowers.create)
    ..aOM<SpacesFollowedByAccount>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spacesFollowedByAccount', subBuilder: SpacesFollowedByAccount.create)
    ..aOM<AccountFollowers>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountFollowers', subBuilder: AccountFollowers.create)
    ..aOM<AccountsFollowedByAccount>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountsFollowedByAccount', subBuilder: AccountsFollowedByAccount.create)
    ..aOM<GeneratedAccount>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'generatedAccount', subBuilder: GeneratedAccount.create)
    ..aOM<ImportedAccount>(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'importedAccount', subBuilder: ImportedAccount.create)
    ..aOM<PostReactionCreated>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postReactionCreated', subBuilder: PostReactionCreated.create)
    ..aOM<PostCreated>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postCreated', subBuilder: PostCreated.create)
    ..aOM<PostUpdated>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postUpdated', subBuilder: PostUpdated.create)
    ..aOM<SpaceFollowed>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceFollowed', subBuilder: SpaceFollowed.create)
    ..hasRequiredFields = false;

  Response._() : super();
  factory Response({
    Error? error,
    SpaceById? spaceById,
    SpaceByHandle? spaceByHandle,
    PostById? postById,
    PostIdsBySpaceId? postIdsBySpaceId,
    ReactionById? reactionById,
    ReactionIdsByPostId? reactionIdsByPostId,
    ReplyIdsByPostId? replyIdsByPostId,
    SocialAccountByAccountId? socialAccountByAccountId,
    NextSpaceId? nextSpaceId,
    NextPostId? nextPostId,
    SpaceIdsByOwner? spaceIdsByOwner,
    SpaceFollowers? spaceFollowers,
    SpacesFollowedByAccount? spacesFollowedByAccount,
    AccountFollowers? accountFollowers,
    AccountsFollowedByAccount? accountsFollowedByAccount,
    GeneratedAccount? generatedAccount,
    ImportedAccount? importedAccount,
    PostReactionCreated? postReactionCreated,
    PostCreated? postCreated,
    PostUpdated? postUpdated,
    SpaceFollowed? spaceFollowed,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (spaceById != null) {
      _result.spaceById = spaceById;
    }
    if (spaceByHandle != null) {
      _result.spaceByHandle = spaceByHandle;
    }
    if (postById != null) {
      _result.postById = postById;
    }
    if (postIdsBySpaceId != null) {
      _result.postIdsBySpaceId = postIdsBySpaceId;
    }
    if (reactionById != null) {
      _result.reactionById = reactionById;
    }
    if (reactionIdsByPostId != null) {
      _result.reactionIdsByPostId = reactionIdsByPostId;
    }
    if (replyIdsByPostId != null) {
      _result.replyIdsByPostId = replyIdsByPostId;
    }
    if (socialAccountByAccountId != null) {
      _result.socialAccountByAccountId = socialAccountByAccountId;
    }
    if (nextSpaceId != null) {
      _result.nextSpaceId = nextSpaceId;
    }
    if (nextPostId != null) {
      _result.nextPostId = nextPostId;
    }
    if (spaceIdsByOwner != null) {
      _result.spaceIdsByOwner = spaceIdsByOwner;
    }
    if (spaceFollowers != null) {
      _result.spaceFollowers = spaceFollowers;
    }
    if (spacesFollowedByAccount != null) {
      _result.spacesFollowedByAccount = spacesFollowedByAccount;
    }
    if (accountFollowers != null) {
      _result.accountFollowers = accountFollowers;
    }
    if (accountsFollowedByAccount != null) {
      _result.accountsFollowedByAccount = accountsFollowedByAccount;
    }
    if (generatedAccount != null) {
      _result.generatedAccount = generatedAccount;
    }
    if (importedAccount != null) {
      _result.importedAccount = importedAccount;
    }
    if (postReactionCreated != null) {
      _result.postReactionCreated = postReactionCreated;
    }
    if (postCreated != null) {
      _result.postCreated = postCreated;
    }
    if (postUpdated != null) {
      _result.postUpdated = postUpdated;
    }
    if (spaceFollowed != null) {
      _result.spaceFollowed = spaceFollowed;
    }
    return _result;
  }
  factory Response.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) =>
      super.copyWith((message) => updates(message as Response))
          as Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response? _defaultInstance;

  Response_Body whichBody() => _Response_BodyByTag[$_whichOneof(0)]!;
  void clearBody() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Error get error => $_getN(0);
  @$pb.TagNumber(1)
  set error(Error v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  Error ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  SpaceById get spaceById => $_getN(1);
  @$pb.TagNumber(2)
  set spaceById(SpaceById v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSpaceById() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceById() => clearField(2);
  @$pb.TagNumber(2)
  SpaceById ensureSpaceById() => $_ensure(1);

  @$pb.TagNumber(3)
  SpaceByHandle get spaceByHandle => $_getN(2);
  @$pb.TagNumber(3)
  set spaceByHandle(SpaceByHandle v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSpaceByHandle() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceByHandle() => clearField(3);
  @$pb.TagNumber(3)
  SpaceByHandle ensureSpaceByHandle() => $_ensure(2);

  @$pb.TagNumber(4)
  PostById get postById => $_getN(3);
  @$pb.TagNumber(4)
  set postById(PostById v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPostById() => $_has(3);
  @$pb.TagNumber(4)
  void clearPostById() => clearField(4);
  @$pb.TagNumber(4)
  PostById ensurePostById() => $_ensure(3);

  @$pb.TagNumber(5)
  PostIdsBySpaceId get postIdsBySpaceId => $_getN(4);
  @$pb.TagNumber(5)
  set postIdsBySpaceId(PostIdsBySpaceId v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasPostIdsBySpaceId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPostIdsBySpaceId() => clearField(5);
  @$pb.TagNumber(5)
  PostIdsBySpaceId ensurePostIdsBySpaceId() => $_ensure(4);

  @$pb.TagNumber(6)
  ReactionById get reactionById => $_getN(5);
  @$pb.TagNumber(6)
  set reactionById(ReactionById v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasReactionById() => $_has(5);
  @$pb.TagNumber(6)
  void clearReactionById() => clearField(6);
  @$pb.TagNumber(6)
  ReactionById ensureReactionById() => $_ensure(5);

  @$pb.TagNumber(7)
  ReactionIdsByPostId get reactionIdsByPostId => $_getN(6);
  @$pb.TagNumber(7)
  set reactionIdsByPostId(ReactionIdsByPostId v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasReactionIdsByPostId() => $_has(6);
  @$pb.TagNumber(7)
  void clearReactionIdsByPostId() => clearField(7);
  @$pb.TagNumber(7)
  ReactionIdsByPostId ensureReactionIdsByPostId() => $_ensure(6);

  @$pb.TagNumber(8)
  ReplyIdsByPostId get replyIdsByPostId => $_getN(7);
  @$pb.TagNumber(8)
  set replyIdsByPostId(ReplyIdsByPostId v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasReplyIdsByPostId() => $_has(7);
  @$pb.TagNumber(8)
  void clearReplyIdsByPostId() => clearField(8);
  @$pb.TagNumber(8)
  ReplyIdsByPostId ensureReplyIdsByPostId() => $_ensure(7);

  @$pb.TagNumber(9)
  SocialAccountByAccountId get socialAccountByAccountId => $_getN(8);
  @$pb.TagNumber(9)
  set socialAccountByAccountId(SocialAccountByAccountId v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSocialAccountByAccountId() => $_has(8);
  @$pb.TagNumber(9)
  void clearSocialAccountByAccountId() => clearField(9);
  @$pb.TagNumber(9)
  SocialAccountByAccountId ensureSocialAccountByAccountId() => $_ensure(8);

  @$pb.TagNumber(10)
  NextSpaceId get nextSpaceId => $_getN(9);
  @$pb.TagNumber(10)
  set nextSpaceId(NextSpaceId v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasNextSpaceId() => $_has(9);
  @$pb.TagNumber(10)
  void clearNextSpaceId() => clearField(10);
  @$pb.TagNumber(10)
  NextSpaceId ensureNextSpaceId() => $_ensure(9);

  @$pb.TagNumber(11)
  NextPostId get nextPostId => $_getN(10);
  @$pb.TagNumber(11)
  set nextPostId(NextPostId v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasNextPostId() => $_has(10);
  @$pb.TagNumber(11)
  void clearNextPostId() => clearField(11);
  @$pb.TagNumber(11)
  NextPostId ensureNextPostId() => $_ensure(10);

  @$pb.TagNumber(12)
  SpaceIdsByOwner get spaceIdsByOwner => $_getN(11);
  @$pb.TagNumber(12)
  set spaceIdsByOwner(SpaceIdsByOwner v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasSpaceIdsByOwner() => $_has(11);
  @$pb.TagNumber(12)
  void clearSpaceIdsByOwner() => clearField(12);
  @$pb.TagNumber(12)
  SpaceIdsByOwner ensureSpaceIdsByOwner() => $_ensure(11);

  @$pb.TagNumber(13)
  SpaceFollowers get spaceFollowers => $_getN(12);
  @$pb.TagNumber(13)
  set spaceFollowers(SpaceFollowers v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasSpaceFollowers() => $_has(12);
  @$pb.TagNumber(13)
  void clearSpaceFollowers() => clearField(13);
  @$pb.TagNumber(13)
  SpaceFollowers ensureSpaceFollowers() => $_ensure(12);

  @$pb.TagNumber(14)
  SpacesFollowedByAccount get spacesFollowedByAccount => $_getN(13);
  @$pb.TagNumber(14)
  set spacesFollowedByAccount(SpacesFollowedByAccount v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasSpacesFollowedByAccount() => $_has(13);
  @$pb.TagNumber(14)
  void clearSpacesFollowedByAccount() => clearField(14);
  @$pb.TagNumber(14)
  SpacesFollowedByAccount ensureSpacesFollowedByAccount() => $_ensure(13);

  @$pb.TagNumber(15)
  AccountFollowers get accountFollowers => $_getN(14);
  @$pb.TagNumber(15)
  set accountFollowers(AccountFollowers v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasAccountFollowers() => $_has(14);
  @$pb.TagNumber(15)
  void clearAccountFollowers() => clearField(15);
  @$pb.TagNumber(15)
  AccountFollowers ensureAccountFollowers() => $_ensure(14);

  @$pb.TagNumber(16)
  AccountsFollowedByAccount get accountsFollowedByAccount => $_getN(15);
  @$pb.TagNumber(16)
  set accountsFollowedByAccount(AccountsFollowedByAccount v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasAccountsFollowedByAccount() => $_has(15);
  @$pb.TagNumber(16)
  void clearAccountsFollowedByAccount() => clearField(16);
  @$pb.TagNumber(16)
  AccountsFollowedByAccount ensureAccountsFollowedByAccount() => $_ensure(15);

  @$pb.TagNumber(17)
  GeneratedAccount get generatedAccount => $_getN(16);
  @$pb.TagNumber(17)
  set generatedAccount(GeneratedAccount v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasGeneratedAccount() => $_has(16);
  @$pb.TagNumber(17)
  void clearGeneratedAccount() => clearField(17);
  @$pb.TagNumber(17)
  GeneratedAccount ensureGeneratedAccount() => $_ensure(16);

  @$pb.TagNumber(18)
  ImportedAccount get importedAccount => $_getN(17);
  @$pb.TagNumber(18)
  set importedAccount(ImportedAccount v) {
    setField(18, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasImportedAccount() => $_has(17);
  @$pb.TagNumber(18)
  void clearImportedAccount() => clearField(18);
  @$pb.TagNumber(18)
  ImportedAccount ensureImportedAccount() => $_ensure(17);

  @$pb.TagNumber(19)
  PostReactionCreated get postReactionCreated => $_getN(18);
  @$pb.TagNumber(19)
  set postReactionCreated(PostReactionCreated v) {
    setField(19, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasPostReactionCreated() => $_has(18);
  @$pb.TagNumber(19)
  void clearPostReactionCreated() => clearField(19);
  @$pb.TagNumber(19)
  PostReactionCreated ensurePostReactionCreated() => $_ensure(18);

  @$pb.TagNumber(20)
  PostCreated get postCreated => $_getN(19);
  @$pb.TagNumber(20)
  set postCreated(PostCreated v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasPostCreated() => $_has(19);
  @$pb.TagNumber(20)
  void clearPostCreated() => clearField(20);
  @$pb.TagNumber(20)
  PostCreated ensurePostCreated() => $_ensure(19);

  @$pb.TagNumber(21)
  PostUpdated get postUpdated => $_getN(20);
  @$pb.TagNumber(21)
  set postUpdated(PostUpdated v) {
    setField(21, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasPostUpdated() => $_has(20);
  @$pb.TagNumber(21)
  void clearPostUpdated() => clearField(21);
  @$pb.TagNumber(21)
  PostUpdated ensurePostUpdated() => $_ensure(20);

  @$pb.TagNumber(22)
  SpaceFollowed get spaceFollowed => $_getN(21);
  @$pb.TagNumber(22)
  set spaceFollowed(SpaceFollowed v) {
    setField(22, v);
  }

  @$pb.TagNumber(22)
  $core.bool hasSpaceFollowed() => $_has(21);
  @$pb.TagNumber(22)
  void clearSpaceFollowed() => clearField(22);
  @$pb.TagNumber(22)
  SpaceFollowed ensureSpaceFollowed() => $_ensure(21);
}

class Error extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Error',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..e<Error_Kind>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'kind',
        $pb.PbFieldType.OE,
        defaultOrMaker: Error_Kind.KIND_UNKNOWN,
        valueOf: Error_Kind.valueOf,
        enumValues: Error_Kind.values)
    ..aOS(2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg')
    ..hasRequiredFields = false;

  Error._() : super();
  factory Error({
    Error_Kind? kind,
    $core.String? msg,
  }) {
    final _result = create();
    if (kind != null) {
      _result.kind = kind;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory Error.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Error copyWith(void Function(Error) updates) =>
      super.copyWith((message) => updates(message as Error))
          as Error; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  Error_Kind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(Error_Kind v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class GetSpaceById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSpaceById',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spaceId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GetSpaceById._() : super();
  factory GetSpaceById({
    $fixnum.Int64? spaceId,
  }) {
    final _result = create();
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    return _result;
  }
  factory GetSpaceById.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSpaceById.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSpaceById clone() => GetSpaceById()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSpaceById copyWith(void Function(GetSpaceById) updates) =>
      super.copyWith((message) => updates(message as GetSpaceById))
          as GetSpaceById; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpaceById create() => GetSpaceById._();
  GetSpaceById createEmptyInstance() => create();
  static $pb.PbList<GetSpaceById> createRepeated() =>
      $pb.PbList<GetSpaceById>();
  @$core.pragma('dart2js:noInline')
  static GetSpaceById getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSpaceById>(create);
  static GetSpaceById? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get spaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set spaceId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => clearField(1);
}

class GetSpaceByHandle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSpaceByHandle',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'handle')
    ..hasRequiredFields = false;

  GetSpaceByHandle._() : super();
  factory GetSpaceByHandle({
    $core.String? handle,
  }) {
    final _result = create();
    if (handle != null) {
      _result.handle = handle;
    }
    return _result;
  }
  factory GetSpaceByHandle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSpaceByHandle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSpaceByHandle clone() => GetSpaceByHandle()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSpaceByHandle copyWith(void Function(GetSpaceByHandle) updates) =>
      super.copyWith((message) => updates(message as GetSpaceByHandle))
          as GetSpaceByHandle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpaceByHandle create() => GetSpaceByHandle._();
  GetSpaceByHandle createEmptyInstance() => create();
  static $pb.PbList<GetSpaceByHandle> createRepeated() =>
      $pb.PbList<GetSpaceByHandle>();
  @$core.pragma('dart2js:noInline')
  static GetSpaceByHandle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSpaceByHandle>(create);
  static GetSpaceByHandle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get handle => $_getSZ(0);
  @$pb.TagNumber(1)
  set handle($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasHandle() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandle() => clearField(1);
}

class GetPostById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetPostById',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'postId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GetPostById._() : super();
  factory GetPostById({
    $fixnum.Int64? postId,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    return _result;
  }
  factory GetPostById.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPostById.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPostById clone() => GetPostById()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPostById copyWith(void Function(GetPostById) updates) =>
      super.copyWith((message) => updates(message as GetPostById))
          as GetPostById; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPostById create() => GetPostById._();
  GetPostById createEmptyInstance() => create();
  static $pb.PbList<GetPostById> createRepeated() => $pb.PbList<GetPostById>();
  @$core.pragma('dart2js:noInline')
  static GetPostById getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPostById>(create);
  static GetPostById? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get postId => $_getI64(0);
  @$pb.TagNumber(1)
  set postId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);
}

class GetReactionById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetReactionById',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'reactionId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GetReactionById._() : super();
  factory GetReactionById({
    $fixnum.Int64? reactionId,
  }) {
    final _result = create();
    if (reactionId != null) {
      _result.reactionId = reactionId;
    }
    return _result;
  }
  factory GetReactionById.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetReactionById.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetReactionById clone() => GetReactionById()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetReactionById copyWith(void Function(GetReactionById) updates) =>
      super.copyWith((message) => updates(message as GetReactionById))
          as GetReactionById; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetReactionById create() => GetReactionById._();
  GetReactionById createEmptyInstance() => create();
  static $pb.PbList<GetReactionById> createRepeated() =>
      $pb.PbList<GetReactionById>();
  @$core.pragma('dart2js:noInline')
  static GetReactionById getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetReactionById>(create);
  static GetReactionById? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get reactionId => $_getI64(0);
  @$pb.TagNumber(1)
  set reactionId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReactionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReactionId() => clearField(1);
}

class GetPostIdsBySpaceId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetPostIdsBySpaceId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spaceId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GetPostIdsBySpaceId._() : super();
  factory GetPostIdsBySpaceId({
    $fixnum.Int64? spaceId,
  }) {
    final _result = create();
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    return _result;
  }
  factory GetPostIdsBySpaceId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetPostIdsBySpaceId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetPostIdsBySpaceId clone() => GetPostIdsBySpaceId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetPostIdsBySpaceId copyWith(void Function(GetPostIdsBySpaceId) updates) =>
      super.copyWith((message) => updates(message as GetPostIdsBySpaceId))
          as GetPostIdsBySpaceId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPostIdsBySpaceId create() => GetPostIdsBySpaceId._();
  GetPostIdsBySpaceId createEmptyInstance() => create();
  static $pb.PbList<GetPostIdsBySpaceId> createRepeated() =>
      $pb.PbList<GetPostIdsBySpaceId>();
  @$core.pragma('dart2js:noInline')
  static GetPostIdsBySpaceId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPostIdsBySpaceId>(create);
  static GetPostIdsBySpaceId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get spaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set spaceId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => clearField(1);
}

class GetReactionIdsByPostId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetReactionIdsByPostId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'postId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GetReactionIdsByPostId._() : super();
  factory GetReactionIdsByPostId({
    $fixnum.Int64? postId,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    return _result;
  }
  factory GetReactionIdsByPostId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetReactionIdsByPostId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetReactionIdsByPostId clone() =>
      GetReactionIdsByPostId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetReactionIdsByPostId copyWith(
          void Function(GetReactionIdsByPostId) updates) =>
      super.copyWith((message) => updates(message as GetReactionIdsByPostId))
          as GetReactionIdsByPostId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetReactionIdsByPostId create() => GetReactionIdsByPostId._();
  GetReactionIdsByPostId createEmptyInstance() => create();
  static $pb.PbList<GetReactionIdsByPostId> createRepeated() =>
      $pb.PbList<GetReactionIdsByPostId>();
  @$core.pragma('dart2js:noInline')
  static GetReactionIdsByPostId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetReactionIdsByPostId>(create);
  static GetReactionIdsByPostId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get postId => $_getI64(0);
  @$pb.TagNumber(1)
  set postId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);
}

class GetReplyIdsByPostId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetReplyIdsByPostId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'postId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GetReplyIdsByPostId._() : super();
  factory GetReplyIdsByPostId({
    $fixnum.Int64? postId,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    return _result;
  }
  factory GetReplyIdsByPostId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetReplyIdsByPostId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetReplyIdsByPostId clone() => GetReplyIdsByPostId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetReplyIdsByPostId copyWith(void Function(GetReplyIdsByPostId) updates) =>
      super.copyWith((message) => updates(message as GetReplyIdsByPostId))
          as GetReplyIdsByPostId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetReplyIdsByPostId create() => GetReplyIdsByPostId._();
  GetReplyIdsByPostId createEmptyInstance() => create();
  static $pb.PbList<GetReplyIdsByPostId> createRepeated() =>
      $pb.PbList<GetReplyIdsByPostId>();
  @$core.pragma('dart2js:noInline')
  static GetReplyIdsByPostId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetReplyIdsByPostId>(create);
  static GetReplyIdsByPostId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get postId => $_getI64(0);
  @$pb.TagNumber(1)
  set postId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);
}

class GetSocialAccountByAccountId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSocialAccountByAccountId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountId')
    ..hasRequiredFields = false;

  GetSocialAccountByAccountId._() : super();
  factory GetSocialAccountByAccountId({
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory GetSocialAccountByAccountId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSocialAccountByAccountId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSocialAccountByAccountId clone() =>
      GetSocialAccountByAccountId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSocialAccountByAccountId copyWith(
          void Function(GetSocialAccountByAccountId) updates) =>
      super.copyWith(
              (message) => updates(message as GetSocialAccountByAccountId))
          as GetSocialAccountByAccountId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSocialAccountByAccountId create() =>
      GetSocialAccountByAccountId._();
  GetSocialAccountByAccountId createEmptyInstance() => create();
  static $pb.PbList<GetSocialAccountByAccountId> createRepeated() =>
      $pb.PbList<GetSocialAccountByAccountId>();
  @$core.pragma('dart2js:noInline')
  static GetSocialAccountByAccountId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSocialAccountByAccountId>(create);
  static GetSocialAccountByAccountId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class GetNextSpaceId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetNextSpaceId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetNextSpaceId._() : super();
  factory GetNextSpaceId() => create();
  factory GetNextSpaceId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetNextSpaceId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetNextSpaceId clone() => GetNextSpaceId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetNextSpaceId copyWith(void Function(GetNextSpaceId) updates) =>
      super.copyWith((message) => updates(message as GetNextSpaceId))
          as GetNextSpaceId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNextSpaceId create() => GetNextSpaceId._();
  GetNextSpaceId createEmptyInstance() => create();
  static $pb.PbList<GetNextSpaceId> createRepeated() =>
      $pb.PbList<GetNextSpaceId>();
  @$core.pragma('dart2js:noInline')
  static GetNextSpaceId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNextSpaceId>(create);
  static GetNextSpaceId? _defaultInstance;
}

class GetNextPostId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetNextPostId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetNextPostId._() : super();
  factory GetNextPostId() => create();
  factory GetNextPostId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetNextPostId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetNextPostId clone() => GetNextPostId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetNextPostId copyWith(void Function(GetNextPostId) updates) =>
      super.copyWith((message) => updates(message as GetNextPostId))
          as GetNextPostId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetNextPostId create() => GetNextPostId._();
  GetNextPostId createEmptyInstance() => create();
  static $pb.PbList<GetNextPostId> createRepeated() =>
      $pb.PbList<GetNextPostId>();
  @$core.pragma('dart2js:noInline')
  static GetNextPostId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNextPostId>(create);
  static GetNextPostId? _defaultInstance;
}

class GetSpaceIdsByOwner extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSpaceIdsByOwner',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountId')
    ..hasRequiredFields = false;

  GetSpaceIdsByOwner._() : super();
  factory GetSpaceIdsByOwner({
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory GetSpaceIdsByOwner.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSpaceIdsByOwner.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSpaceIdsByOwner clone() => GetSpaceIdsByOwner()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSpaceIdsByOwner copyWith(void Function(GetSpaceIdsByOwner) updates) =>
      super.copyWith((message) => updates(message as GetSpaceIdsByOwner))
          as GetSpaceIdsByOwner; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpaceIdsByOwner create() => GetSpaceIdsByOwner._();
  GetSpaceIdsByOwner createEmptyInstance() => create();
  static $pb.PbList<GetSpaceIdsByOwner> createRepeated() =>
      $pb.PbList<GetSpaceIdsByOwner>();
  @$core.pragma('dart2js:noInline')
  static GetSpaceIdsByOwner getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSpaceIdsByOwner>(create);
  static GetSpaceIdsByOwner? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class GetSpaceFollowers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSpaceFollowers',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spaceId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  GetSpaceFollowers._() : super();
  factory GetSpaceFollowers({
    $fixnum.Int64? spaceId,
  }) {
    final _result = create();
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    return _result;
  }
  factory GetSpaceFollowers.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSpaceFollowers.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSpaceFollowers clone() => GetSpaceFollowers()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSpaceFollowers copyWith(void Function(GetSpaceFollowers) updates) =>
      super.copyWith((message) => updates(message as GetSpaceFollowers))
          as GetSpaceFollowers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpaceFollowers create() => GetSpaceFollowers._();
  GetSpaceFollowers createEmptyInstance() => create();
  static $pb.PbList<GetSpaceFollowers> createRepeated() =>
      $pb.PbList<GetSpaceFollowers>();
  @$core.pragma('dart2js:noInline')
  static GetSpaceFollowers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSpaceFollowers>(create);
  static GetSpaceFollowers? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get spaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set spaceId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => clearField(1);
}

class GetSpacesFollowedByAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetSpacesFollowedByAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountId')
    ..hasRequiredFields = false;

  GetSpacesFollowedByAccount._() : super();
  factory GetSpacesFollowedByAccount({
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory GetSpacesFollowedByAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetSpacesFollowedByAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetSpacesFollowedByAccount clone() =>
      GetSpacesFollowedByAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetSpacesFollowedByAccount copyWith(
          void Function(GetSpacesFollowedByAccount) updates) =>
      super.copyWith(
              (message) => updates(message as GetSpacesFollowedByAccount))
          as GetSpacesFollowedByAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpacesFollowedByAccount create() => GetSpacesFollowedByAccount._();
  GetSpacesFollowedByAccount createEmptyInstance() => create();
  static $pb.PbList<GetSpacesFollowedByAccount> createRepeated() =>
      $pb.PbList<GetSpacesFollowedByAccount>();
  @$core.pragma('dart2js:noInline')
  static GetSpacesFollowedByAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSpacesFollowedByAccount>(create);
  static GetSpacesFollowedByAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class GetAccountFollowers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetAccountFollowers',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountId')
    ..hasRequiredFields = false;

  GetAccountFollowers._() : super();
  factory GetAccountFollowers({
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory GetAccountFollowers.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetAccountFollowers.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetAccountFollowers clone() => GetAccountFollowers()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetAccountFollowers copyWith(void Function(GetAccountFollowers) updates) =>
      super.copyWith((message) => updates(message as GetAccountFollowers))
          as GetAccountFollowers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountFollowers create() => GetAccountFollowers._();
  GetAccountFollowers createEmptyInstance() => create();
  static $pb.PbList<GetAccountFollowers> createRepeated() =>
      $pb.PbList<GetAccountFollowers>();
  @$core.pragma('dart2js:noInline')
  static GetAccountFollowers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountFollowers>(create);
  static GetAccountFollowers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class GetAccountsFollowedByAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetAccountsFollowedByAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountId')
    ..hasRequiredFields = false;

  GetAccountsFollowedByAccount._() : super();
  factory GetAccountsFollowedByAccount({
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory GetAccountsFollowedByAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetAccountsFollowedByAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetAccountsFollowedByAccount clone() =>
      GetAccountsFollowedByAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetAccountsFollowedByAccount copyWith(
          void Function(GetAccountsFollowedByAccount) updates) =>
      super.copyWith(
              (message) => updates(message as GetAccountsFollowedByAccount))
          as GetAccountsFollowedByAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountsFollowedByAccount create() =>
      GetAccountsFollowedByAccount._();
  GetAccountsFollowedByAccount createEmptyInstance() => create();
  static $pb.PbList<GetAccountsFollowedByAccount> createRepeated() =>
      $pb.PbList<GetAccountsFollowedByAccount>();
  @$core.pragma('dart2js:noInline')
  static GetAccountsFollowedByAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountsFollowedByAccount>(create);
  static GetAccountsFollowedByAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class GenerateAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GenerateAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'password')
    ..hasRequiredFields = false;

  GenerateAccount._() : super();
  factory GenerateAccount({
    $core.String? password,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory GenerateAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenerateAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GenerateAccount clone() => GenerateAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GenerateAccount copyWith(void Function(GenerateAccount) updates) =>
      super.copyWith((message) => updates(message as GenerateAccount))
          as GenerateAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenerateAccount create() => GenerateAccount._();
  GenerateAccount createEmptyInstance() => create();
  static $pb.PbList<GenerateAccount> createRepeated() =>
      $pb.PbList<GenerateAccount>();
  @$core.pragma('dart2js:noInline')
  static GenerateAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GenerateAccount>(create);
  static GenerateAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);
}

class ImportAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ImportAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'password')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'suri')
    ..hasRequiredFields = false;

  ImportAccount._() : super();
  factory ImportAccount({
    $core.String? password,
    $core.String? suri,
  }) {
    final _result = create();
    if (password != null) {
      _result.password = password;
    }
    if (suri != null) {
      _result.suri = suri;
    }
    return _result;
  }
  factory ImportAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImportAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImportAccount clone() => ImportAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImportAccount copyWith(void Function(ImportAccount) updates) =>
      super.copyWith((message) => updates(message as ImportAccount))
          as ImportAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImportAccount create() => ImportAccount._();
  ImportAccount createEmptyInstance() => create();
  static $pb.PbList<ImportAccount> createRepeated() =>
      $pb.PbList<ImportAccount>();
  @$core.pragma('dart2js:noInline')
  static ImportAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImportAccount>(create);
  static ImportAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get password => $_getSZ(0);
  @$pb.TagNumber(1)
  set password($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get suri => $_getSZ(1);
  @$pb.TagNumber(2)
  set suri($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSuri() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuri() => clearField(2);
}

class CreatePostReaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreatePostReaction',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<Reaction_Kind>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kind',
        $pb.PbFieldType.OE,
        defaultOrMaker: Reaction_Kind.UNKNOWN,
        valueOf: Reaction_Kind.valueOf,
        enumValues: Reaction_Kind.values)
    ..hasRequiredFields = false;

  CreatePostReaction._() : super();
  factory CreatePostReaction({
    $fixnum.Int64? postId,
    Reaction_Kind? kind,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    if (kind != null) {
      _result.kind = kind;
    }
    return _result;
  }
  factory CreatePostReaction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreatePostReaction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreatePostReaction clone() => CreatePostReaction()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreatePostReaction copyWith(void Function(CreatePostReaction) updates) =>
      super.copyWith((message) => updates(message as CreatePostReaction))
          as CreatePostReaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePostReaction create() => CreatePostReaction._();
  CreatePostReaction createEmptyInstance() => create();
  static $pb.PbList<CreatePostReaction> createRepeated() =>
      $pb.PbList<CreatePostReaction>();
  @$core.pragma('dart2js:noInline')
  static CreatePostReaction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePostReaction>(create);
  static CreatePostReaction? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get postId => $_getI64(0);
  @$pb.TagNumber(1)
  set postId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);

  @$pb.TagNumber(2)
  Reaction_Kind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(Reaction_Kind v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);
}

class CreatePost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreatePost',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<PostExtension>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extensionValue',
        subBuilder: PostExtension.create)
    ..aOM<Content>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content',
        subBuilder: Content.create)
    ..hasRequiredFields = false;

  CreatePost._() : super();
  factory CreatePost({
    $fixnum.Int64? spaceId,
    PostExtension? extensionValue,
    Content? content,
  }) {
    final _result = create();
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    if (extensionValue != null) {
      _result.extensionValue = extensionValue;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory CreatePost.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreatePost.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreatePost clone() => CreatePost()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreatePost copyWith(void Function(CreatePost) updates) =>
      super.copyWith((message) => updates(message as CreatePost))
          as CreatePost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePost create() => CreatePost._();
  CreatePost createEmptyInstance() => create();
  static $pb.PbList<CreatePost> createRepeated() => $pb.PbList<CreatePost>();
  @$core.pragma('dart2js:noInline')
  static CreatePost getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreatePost>(create);
  static CreatePost? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get spaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set spaceId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => clearField(1);

  @$pb.TagNumber(2)
  PostExtension get extensionValue => $_getN(1);
  @$pb.TagNumber(2)
  set extensionValue(PostExtension v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExtensionValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtensionValue() => clearField(2);
  @$pb.TagNumber(2)
  PostExtension ensureExtensionValue() => $_ensure(1);

  @$pb.TagNumber(3)
  Content get content => $_getN(2);
  @$pb.TagNumber(3)
  set content(Content v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
  @$pb.TagNumber(3)
  Content ensureContent() => $_ensure(2);
}

class UpdatePost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdatePost',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'postId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<PostUpdate>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postUpdate',
        subBuilder: PostUpdate.create)
    ..hasRequiredFields = false;

  UpdatePost._() : super();
  factory UpdatePost({
    $fixnum.Int64? postId,
    PostUpdate? postUpdate,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    if (postUpdate != null) {
      _result.postUpdate = postUpdate;
    }
    return _result;
  }
  factory UpdatePost.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdatePost.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdatePost clone() => UpdatePost()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdatePost copyWith(void Function(UpdatePost) updates) =>
      super.copyWith((message) => updates(message as UpdatePost))
          as UpdatePost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePost create() => UpdatePost._();
  UpdatePost createEmptyInstance() => create();
  static $pb.PbList<UpdatePost> createRepeated() => $pb.PbList<UpdatePost>();
  @$core.pragma('dart2js:noInline')
  static UpdatePost getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdatePost>(create);
  static UpdatePost? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get postId => $_getI64(0);
  @$pb.TagNumber(1)
  set postId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);

  @$pb.TagNumber(2)
  PostUpdate get postUpdate => $_getN(1);
  @$pb.TagNumber(2)
  set postUpdate(PostUpdate v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPostUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostUpdate() => clearField(2);
  @$pb.TagNumber(2)
  PostUpdate ensurePostUpdate() => $_ensure(1);
}

class FollowSpace extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'FollowSpace',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spaceId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  FollowSpace._() : super();
  factory FollowSpace({
    $fixnum.Int64? spaceId,
  }) {
    final _result = create();
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    return _result;
  }
  factory FollowSpace.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FollowSpace.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FollowSpace clone() => FollowSpace()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FollowSpace copyWith(void Function(FollowSpace) updates) =>
      super.copyWith((message) => updates(message as FollowSpace))
          as FollowSpace; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FollowSpace create() => FollowSpace._();
  FollowSpace createEmptyInstance() => create();
  static $pb.PbList<FollowSpace> createRepeated() => $pb.PbList<FollowSpace>();
  @$core.pragma('dart2js:noInline')
  static FollowSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FollowSpace>(create);
  static FollowSpace? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get spaceId => $_getI64(0);
  @$pb.TagNumber(1)
  set spaceId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => clearField(1);
}

class WhoAndWhen extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'WhoAndWhen',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'account')
    ..a<$fixnum.Int64>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockNumber', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'time',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  WhoAndWhen._() : super();
  factory WhoAndWhen({
    $core.String? account,
    $fixnum.Int64? blockNumber,
    $fixnum.Int64? time,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (blockNumber != null) {
      _result.blockNumber = blockNumber;
    }
    if (time != null) {
      _result.time = time;
    }
    return _result;
  }
  factory WhoAndWhen.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WhoAndWhen.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WhoAndWhen clone() => WhoAndWhen()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WhoAndWhen copyWith(void Function(WhoAndWhen) updates) =>
      super.copyWith((message) => updates(message as WhoAndWhen))
          as WhoAndWhen; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WhoAndWhen create() => WhoAndWhen._();
  WhoAndWhen createEmptyInstance() => create();
  static $pb.PbList<WhoAndWhen> createRepeated() => $pb.PbList<WhoAndWhen>();
  @$core.pragma('dart2js:noInline')
  static WhoAndWhen getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WhoAndWhen>(create);
  static WhoAndWhen? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get blockNumber => $_getI64(1);
  @$pb.TagNumber(2)
  set blockNumber($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBlockNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockNumber() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get time => $_getI64(2);
  @$pb.TagNumber(3)
  set time($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);
}

enum Content_Value { raw, ipfs, hyper, notSet }

class Content extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Content_Value> _Content_ValueByTag = {
    1: Content_Value.raw,
    2: Content_Value.ipfs,
    3: Content_Value.hyper,
    0: Content_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Content',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..a<$core.List<$core.int>>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'raw',
        $pb.PbFieldType.OY)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ipfs')
    ..aOS(
        3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hyper')
    ..hasRequiredFields = false;

  Content._() : super();
  factory Content({
    $core.List<$core.int>? raw,
    $core.String? ipfs,
    $core.String? hyper,
  }) {
    final _result = create();
    if (raw != null) {
      _result.raw = raw;
    }
    if (ipfs != null) {
      _result.ipfs = ipfs;
    }
    if (hyper != null) {
      _result.hyper = hyper;
    }
    return _result;
  }
  factory Content.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Content.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Content clone() => Content()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Content copyWith(void Function(Content) updates) =>
      super.copyWith((message) => updates(message as Content))
          as Content; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Content create() => Content._();
  Content createEmptyInstance() => create();
  static $pb.PbList<Content> createRepeated() => $pb.PbList<Content>();
  @$core.pragma('dart2js:noInline')
  static Content getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Content>(create);
  static Content? _defaultInstance;

  Content_Value whichValue() => _Content_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get raw => $_getN(0);
  @$pb.TagNumber(1)
  set raw($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRaw() => $_has(0);
  @$pb.TagNumber(1)
  void clearRaw() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ipfs => $_getSZ(1);
  @$pb.TagNumber(2)
  set ipfs($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasIpfs() => $_has(1);
  @$pb.TagNumber(2)
  void clearIpfs() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hyper => $_getSZ(2);
  @$pb.TagNumber(3)
  set hyper($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasHyper() => $_has(2);
  @$pb.TagNumber(3)
  void clearHyper() => clearField(3);
}

class RegularPost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'RegularPost',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  RegularPost._() : super();
  factory RegularPost() => create();
  factory RegularPost.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegularPost.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegularPost clone() => RegularPost()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegularPost copyWith(void Function(RegularPost) updates) =>
      super.copyWith((message) => updates(message as RegularPost))
          as RegularPost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegularPost create() => RegularPost._();
  RegularPost createEmptyInstance() => create();
  static $pb.PbList<RegularPost> createRepeated() => $pb.PbList<RegularPost>();
  @$core.pragma('dart2js:noInline')
  static RegularPost getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegularPost>(create);
  static RegularPost? _defaultInstance;
}

enum PostExtension_Value { regularPost, comment, sharedPost, notSet }

class PostExtension extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PostExtension_Value>
      _PostExtension_ValueByTag = {
    1: PostExtension_Value.regularPost,
    2: PostExtension_Value.comment,
    3: PostExtension_Value.sharedPost,
    0: PostExtension_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostExtension',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<RegularPost>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'regularPost',
        subBuilder: RegularPost.create)
    ..aOM<Comment>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment',
        subBuilder: Comment.create)
    ..aOM<SharedPost>(
        3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sharedPost',
        subBuilder: SharedPost.create)
    ..hasRequiredFields = false;

  PostExtension._() : super();
  factory PostExtension({
    RegularPost? regularPost,
    Comment? comment,
    SharedPost? sharedPost,
  }) {
    final _result = create();
    if (regularPost != null) {
      _result.regularPost = regularPost;
    }
    if (comment != null) {
      _result.comment = comment;
    }
    if (sharedPost != null) {
      _result.sharedPost = sharedPost;
    }
    return _result;
  }
  factory PostExtension.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostExtension.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostExtension clone() => PostExtension()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostExtension copyWith(void Function(PostExtension) updates) =>
      super.copyWith((message) => updates(message as PostExtension))
          as PostExtension; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostExtension create() => PostExtension._();
  PostExtension createEmptyInstance() => create();
  static $pb.PbList<PostExtension> createRepeated() =>
      $pb.PbList<PostExtension>();
  @$core.pragma('dart2js:noInline')
  static PostExtension getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostExtension>(create);
  static PostExtension? _defaultInstance;

  PostExtension_Value whichValue() =>
      _PostExtension_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RegularPost get regularPost => $_getN(0);
  @$pb.TagNumber(1)
  set regularPost(RegularPost v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRegularPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegularPost() => clearField(1);
  @$pb.TagNumber(1)
  RegularPost ensureRegularPost() => $_ensure(0);

  @$pb.TagNumber(2)
  Comment get comment => $_getN(1);
  @$pb.TagNumber(2)
  set comment(Comment v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasComment() => $_has(1);
  @$pb.TagNumber(2)
  void clearComment() => clearField(2);
  @$pb.TagNumber(2)
  Comment ensureComment() => $_ensure(1);

  @$pb.TagNumber(3)
  SharedPost get sharedPost => $_getN(2);
  @$pb.TagNumber(3)
  set sharedPost(SharedPost v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSharedPost() => $_has(2);
  @$pb.TagNumber(3)
  void clearSharedPost() => clearField(3);
  @$pb.TagNumber(3)
  SharedPost ensureSharedPost() => $_ensure(2);
}

class Space extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Space',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<WhoAndWhen>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created',
        subBuilder: WhoAndWhen.create)
    ..aOM<WhoAndWhen>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updated',
        subBuilder: WhoAndWhen.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'handle')
    ..aOM<Content>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: Content.create)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidden')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postsCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hiddenPostsCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'followersCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  Space._() : super();
  factory Space({
    $fixnum.Int64? id,
    WhoAndWhen? created,
    WhoAndWhen? updated,
    $core.String? owner,
    $fixnum.Int64? parentId,
    $core.String? handle,
    Content? content,
    $core.bool? hidden,
    $core.int? postsCount,
    $core.int? hiddenPostsCount,
    $core.int? followersCount,
    $core.int? score,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (created != null) {
      _result.created = created;
    }
    if (updated != null) {
      _result.updated = updated;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (handle != null) {
      _result.handle = handle;
    }
    if (content != null) {
      _result.content = content;
    }
    if (hidden != null) {
      _result.hidden = hidden;
    }
    if (postsCount != null) {
      _result.postsCount = postsCount;
    }
    if (hiddenPostsCount != null) {
      _result.hiddenPostsCount = hiddenPostsCount;
    }
    if (followersCount != null) {
      _result.followersCount = followersCount;
    }
    if (score != null) {
      _result.score = score;
    }
    return _result;
  }
  factory Space.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Space.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Space clone() => Space()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Space copyWith(void Function(Space) updates) =>
      super.copyWith((message) => updates(message as Space))
          as Space; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Space create() => Space._();
  Space createEmptyInstance() => create();
  static $pb.PbList<Space> createRepeated() => $pb.PbList<Space>();
  @$core.pragma('dart2js:noInline')
  static Space getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Space>(create);
  static Space? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  WhoAndWhen get created => $_getN(1);
  @$pb.TagNumber(2)
  set created(WhoAndWhen v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreated() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreated() => clearField(2);
  @$pb.TagNumber(2)
  WhoAndWhen ensureCreated() => $_ensure(1);

  @$pb.TagNumber(3)
  WhoAndWhen get updated => $_getN(2);
  @$pb.TagNumber(3)
  set updated(WhoAndWhen v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdated() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdated() => clearField(3);
  @$pb.TagNumber(3)
  WhoAndWhen ensureUpdated() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get owner => $_getSZ(3);
  @$pb.TagNumber(4)
  set owner($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwner() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get parentId => $_getI64(4);
  @$pb.TagNumber(5)
  set parentId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasParentId() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get handle => $_getSZ(5);
  @$pb.TagNumber(6)
  set handle($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasHandle() => $_has(5);
  @$pb.TagNumber(6)
  void clearHandle() => clearField(6);

  @$pb.TagNumber(7)
  Content get content => $_getN(6);
  @$pb.TagNumber(7)
  set content(Content v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasContent() => $_has(6);
  @$pb.TagNumber(7)
  void clearContent() => clearField(7);
  @$pb.TagNumber(7)
  Content ensureContent() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.bool get hidden => $_getBF(7);
  @$pb.TagNumber(8)
  set hidden($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasHidden() => $_has(7);
  @$pb.TagNumber(8)
  void clearHidden() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get postsCount => $_getIZ(8);
  @$pb.TagNumber(9)
  set postsCount($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasPostsCount() => $_has(8);
  @$pb.TagNumber(9)
  void clearPostsCount() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get hiddenPostsCount => $_getIZ(9);
  @$pb.TagNumber(10)
  set hiddenPostsCount($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasHiddenPostsCount() => $_has(9);
  @$pb.TagNumber(10)
  void clearHiddenPostsCount() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get followersCount => $_getIZ(10);
  @$pb.TagNumber(11)
  set followersCount($core.int v) {
    $_setUnsignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasFollowersCount() => $_has(10);
  @$pb.TagNumber(11)
  void clearFollowersCount() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get score => $_getIZ(11);
  @$pb.TagNumber(12)
  set score($core.int v) {
    $_setSignedInt32(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasScore() => $_has(11);
  @$pb.TagNumber(12)
  void clearScore() => clearField(12);
}

class Post extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Post',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<WhoAndWhen>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created',
        subBuilder: WhoAndWhen.create)
    ..aOM<WhoAndWhen>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updated',
        subBuilder: WhoAndWhen.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'owner')
    ..aOM<PostExtension>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extensionValue', subBuilder: PostExtension.create)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Content>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', subBuilder: Content.create)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hidden')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'repliesCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hiddenRepliesCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sharesCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upvotesCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'downvotesCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'score', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  Post._() : super();
  factory Post({
    $fixnum.Int64? id,
    WhoAndWhen? created,
    WhoAndWhen? updated,
    $core.String? owner,
    PostExtension? extensionValue,
    $fixnum.Int64? spaceId,
    Content? content,
    $core.bool? hidden,
    $core.int? repliesCount,
    $core.int? hiddenRepliesCount,
    $core.int? sharesCount,
    $core.int? upvotesCount,
    $core.int? downvotesCount,
    $core.int? score,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (created != null) {
      _result.created = created;
    }
    if (updated != null) {
      _result.updated = updated;
    }
    if (owner != null) {
      _result.owner = owner;
    }
    if (extensionValue != null) {
      _result.extensionValue = extensionValue;
    }
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    if (content != null) {
      _result.content = content;
    }
    if (hidden != null) {
      _result.hidden = hidden;
    }
    if (repliesCount != null) {
      _result.repliesCount = repliesCount;
    }
    if (hiddenRepliesCount != null) {
      _result.hiddenRepliesCount = hiddenRepliesCount;
    }
    if (sharesCount != null) {
      _result.sharesCount = sharesCount;
    }
    if (upvotesCount != null) {
      _result.upvotesCount = upvotesCount;
    }
    if (downvotesCount != null) {
      _result.downvotesCount = downvotesCount;
    }
    if (score != null) {
      _result.score = score;
    }
    return _result;
  }
  factory Post.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Post.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Post clone() => Post()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Post copyWith(void Function(Post) updates) =>
      super.copyWith((message) => updates(message as Post))
          as Post; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Post create() => Post._();
  Post createEmptyInstance() => create();
  static $pb.PbList<Post> createRepeated() => $pb.PbList<Post>();
  @$core.pragma('dart2js:noInline')
  static Post getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Post>(create);
  static Post? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  WhoAndWhen get created => $_getN(1);
  @$pb.TagNumber(2)
  set created(WhoAndWhen v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreated() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreated() => clearField(2);
  @$pb.TagNumber(2)
  WhoAndWhen ensureCreated() => $_ensure(1);

  @$pb.TagNumber(3)
  WhoAndWhen get updated => $_getN(2);
  @$pb.TagNumber(3)
  set updated(WhoAndWhen v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdated() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdated() => clearField(3);
  @$pb.TagNumber(3)
  WhoAndWhen ensureUpdated() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get owner => $_getSZ(3);
  @$pb.TagNumber(4)
  set owner($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasOwner() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwner() => clearField(4);

  @$pb.TagNumber(5)
  PostExtension get extensionValue => $_getN(4);
  @$pb.TagNumber(5)
  set extensionValue(PostExtension v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExtensionValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtensionValue() => clearField(5);
  @$pb.TagNumber(5)
  PostExtension ensureExtensionValue() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get spaceId => $_getI64(5);
  @$pb.TagNumber(6)
  set spaceId($fixnum.Int64 v) {
    $_setInt64(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSpaceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpaceId() => clearField(6);

  @$pb.TagNumber(7)
  Content get content => $_getN(6);
  @$pb.TagNumber(7)
  set content(Content v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasContent() => $_has(6);
  @$pb.TagNumber(7)
  void clearContent() => clearField(7);
  @$pb.TagNumber(7)
  Content ensureContent() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.bool get hidden => $_getBF(7);
  @$pb.TagNumber(8)
  set hidden($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasHidden() => $_has(7);
  @$pb.TagNumber(8)
  void clearHidden() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get repliesCount => $_getIZ(8);
  @$pb.TagNumber(9)
  set repliesCount($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasRepliesCount() => $_has(8);
  @$pb.TagNumber(9)
  void clearRepliesCount() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get hiddenRepliesCount => $_getIZ(9);
  @$pb.TagNumber(10)
  set hiddenRepliesCount($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasHiddenRepliesCount() => $_has(9);
  @$pb.TagNumber(10)
  void clearHiddenRepliesCount() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get sharesCount => $_getIZ(10);
  @$pb.TagNumber(11)
  set sharesCount($core.int v) {
    $_setUnsignedInt32(10, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasSharesCount() => $_has(10);
  @$pb.TagNumber(11)
  void clearSharesCount() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get upvotesCount => $_getIZ(11);
  @$pb.TagNumber(12)
  set upvotesCount($core.int v) {
    $_setUnsignedInt32(11, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasUpvotesCount() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpvotesCount() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get downvotesCount => $_getIZ(12);
  @$pb.TagNumber(13)
  set downvotesCount($core.int v) {
    $_setUnsignedInt32(12, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasDownvotesCount() => $_has(12);
  @$pb.TagNumber(13)
  void clearDownvotesCount() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get score => $_getIZ(13);
  @$pb.TagNumber(14)
  set score($core.int v) {
    $_setSignedInt32(13, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasScore() => $_has(13);
  @$pb.TagNumber(14)
  void clearScore() => clearField(14);
}

class Comment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Comment',
          package: const $pb.PackageName(
              const $core.bool.fromEnvironment('protobuf.omit_message_names')
                  ? ''
                  : 'subsocial'),
          createEmptyInstance: create)
        ..a<$fixnum.Int64>(
            1,
            const $core.bool.fromEnvironment('protobuf.omit_field_names')
                ? ''
                : 'parentId',
            $pb.PbFieldType.OU6,
            defaultOrMaker: $fixnum.Int64.ZERO)
        ..a<$fixnum.Int64>(
            2,
            const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rootPostId',
            $pb.PbFieldType.OU6,
            defaultOrMaker: $fixnum.Int64.ZERO)
        ..hasRequiredFields = false;

  Comment._() : super();
  factory Comment({
    $fixnum.Int64? parentId,
    $fixnum.Int64? rootPostId,
  }) {
    final _result = create();
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (rootPostId != null) {
      _result.rootPostId = rootPostId;
    }
    return _result;
  }
  factory Comment.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Comment.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Comment clone() => Comment()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Comment copyWith(void Function(Comment) updates) =>
      super.copyWith((message) => updates(message as Comment))
          as Comment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Comment create() => Comment._();
  Comment createEmptyInstance() => create();
  static $pb.PbList<Comment> createRepeated() => $pb.PbList<Comment>();
  @$core.pragma('dart2js:noInline')
  static Comment getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Comment>(create);
  static Comment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get parentId => $_getI64(0);
  @$pb.TagNumber(1)
  set parentId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParentId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get rootPostId => $_getI64(1);
  @$pb.TagNumber(2)
  set rootPostId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRootPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRootPostId() => clearField(2);
}

class SharedPost extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SharedPost',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'rootPostId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  SharedPost._() : super();
  factory SharedPost({
    $fixnum.Int64? rootPostId,
  }) {
    final _result = create();
    if (rootPostId != null) {
      _result.rootPostId = rootPostId;
    }
    return _result;
  }
  factory SharedPost.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SharedPost.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SharedPost clone() => SharedPost()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SharedPost copyWith(void Function(SharedPost) updates) =>
      super.copyWith((message) => updates(message as SharedPost))
          as SharedPost; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SharedPost create() => SharedPost._();
  SharedPost createEmptyInstance() => create();
  static $pb.PbList<SharedPost> createRepeated() => $pb.PbList<SharedPost>();
  @$core.pragma('dart2js:noInline')
  static SharedPost getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SharedPost>(create);
  static SharedPost? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rootPostId => $_getI64(0);
  @$pb.TagNumber(1)
  set rootPostId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRootPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootPostId() => clearField(1);
}

class Reaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Reaction',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<WhoAndWhen>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created',
        subBuilder: WhoAndWhen.create)
    ..aOM<WhoAndWhen>(
        3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updated',
        subBuilder: WhoAndWhen.create)
    ..e<Reaction_Kind>(
        4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: Reaction_Kind.UNKNOWN,
        valueOf: Reaction_Kind.valueOf,
        enumValues: Reaction_Kind.values)
    ..hasRequiredFields = false;

  Reaction._() : super();
  factory Reaction({
    $fixnum.Int64? id,
    WhoAndWhen? created,
    WhoAndWhen? updated,
    Reaction_Kind? kind,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (created != null) {
      _result.created = created;
    }
    if (updated != null) {
      _result.updated = updated;
    }
    if (kind != null) {
      _result.kind = kind;
    }
    return _result;
  }
  factory Reaction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Reaction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Reaction clone() => Reaction()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Reaction copyWith(void Function(Reaction) updates) =>
      super.copyWith((message) => updates(message as Reaction))
          as Reaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Reaction create() => Reaction._();
  Reaction createEmptyInstance() => create();
  static $pb.PbList<Reaction> createRepeated() => $pb.PbList<Reaction>();
  @$core.pragma('dart2js:noInline')
  static Reaction getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reaction>(create);
  static Reaction? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  WhoAndWhen get created => $_getN(1);
  @$pb.TagNumber(2)
  set created(WhoAndWhen v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCreated() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreated() => clearField(2);
  @$pb.TagNumber(2)
  WhoAndWhen ensureCreated() => $_ensure(1);

  @$pb.TagNumber(3)
  WhoAndWhen get updated => $_getN(2);
  @$pb.TagNumber(3)
  set updated(WhoAndWhen v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdated() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdated() => clearField(3);
  @$pb.TagNumber(3)
  WhoAndWhen ensureUpdated() => $_ensure(2);

  @$pb.TagNumber(4)
  Reaction_Kind get kind => $_getN(3);
  @$pb.TagNumber(4)
  set kind(Reaction_Kind v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasKind() => $_has(3);
  @$pb.TagNumber(4)
  void clearKind() => clearField(4);
}

class SocialAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SocialAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'followersCount',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'followingAccountsCount',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'followingSpacesCount',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reputation', $pb.PbFieldType.OU3)
    ..aOM<Profile>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'profile', subBuilder: Profile.create)
    ..hasRequiredFields = false;

  SocialAccount._() : super();
  factory SocialAccount({
    $core.int? followersCount,
    $core.int? followingAccountsCount,
    $core.int? followingSpacesCount,
    $core.int? reputation,
    Profile? profile,
  }) {
    final _result = create();
    if (followersCount != null) {
      _result.followersCount = followersCount;
    }
    if (followingAccountsCount != null) {
      _result.followingAccountsCount = followingAccountsCount;
    }
    if (followingSpacesCount != null) {
      _result.followingSpacesCount = followingSpacesCount;
    }
    if (reputation != null) {
      _result.reputation = reputation;
    }
    if (profile != null) {
      _result.profile = profile;
    }
    return _result;
  }
  factory SocialAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SocialAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SocialAccount clone() => SocialAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SocialAccount copyWith(void Function(SocialAccount) updates) =>
      super.copyWith((message) => updates(message as SocialAccount))
          as SocialAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SocialAccount create() => SocialAccount._();
  SocialAccount createEmptyInstance() => create();
  static $pb.PbList<SocialAccount> createRepeated() =>
      $pb.PbList<SocialAccount>();
  @$core.pragma('dart2js:noInline')
  static SocialAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SocialAccount>(create);
  static SocialAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get followersCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set followersCount($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFollowersCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearFollowersCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get followingAccountsCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set followingAccountsCount($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFollowingAccountsCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearFollowingAccountsCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get followingSpacesCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set followingSpacesCount($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasFollowingSpacesCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearFollowingSpacesCount() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get reputation => $_getIZ(3);
  @$pb.TagNumber(4)
  set reputation($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasReputation() => $_has(3);
  @$pb.TagNumber(4)
  void clearReputation() => clearField(4);

  @$pb.TagNumber(5)
  Profile get profile => $_getN(4);
  @$pb.TagNumber(5)
  set profile(Profile v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasProfile() => $_has(4);
  @$pb.TagNumber(5)
  void clearProfile() => clearField(5);
  @$pb.TagNumber(5)
  Profile ensureProfile() => $_ensure(4);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Profile',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOM<WhoAndWhen>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'created',
        subBuilder: WhoAndWhen.create)
    ..aOM<WhoAndWhen>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updated',
        subBuilder: WhoAndWhen.create)
    ..aOM<Content>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content',
        subBuilder: Content.create)
    ..hasRequiredFields = false;

  Profile._() : super();
  factory Profile({
    WhoAndWhen? created,
    WhoAndWhen? updated,
    Content? content,
  }) {
    final _result = create();
    if (created != null) {
      _result.created = created;
    }
    if (updated != null) {
      _result.updated = updated;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory Profile.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Profile clone() => Profile()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Profile copyWith(void Function(Profile) updates) =>
      super.copyWith((message) => updates(message as Profile))
          as Profile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  @$pb.TagNumber(1)
  WhoAndWhen get created => $_getN(0);
  @$pb.TagNumber(1)
  set created(WhoAndWhen v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCreated() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreated() => clearField(1);
  @$pb.TagNumber(1)
  WhoAndWhen ensureCreated() => $_ensure(0);

  @$pb.TagNumber(2)
  WhoAndWhen get updated => $_getN(1);
  @$pb.TagNumber(2)
  set updated(WhoAndWhen v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdated() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdated() => clearField(2);
  @$pb.TagNumber(2)
  WhoAndWhen ensureUpdated() => $_ensure(1);

  @$pb.TagNumber(3)
  Content get content => $_getN(2);
  @$pb.TagNumber(3)
  set content(Content v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
  @$pb.TagNumber(3)
  Content ensureContent() => $_ensure(2);
}

class PostUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostUpdate',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOM<Content>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'content',
        subBuilder: Content.create)
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'hidden')
    ..hasRequiredFields = false;

  PostUpdate._() : super();
  factory PostUpdate({
    Content? content,
    $core.bool? hidden,
  }) {
    final _result = create();
    if (content != null) {
      _result.content = content;
    }
    if (hidden != null) {
      _result.hidden = hidden;
    }
    return _result;
  }
  factory PostUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostUpdate clone() => PostUpdate()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostUpdate copyWith(void Function(PostUpdate) updates) =>
      super.copyWith((message) => updates(message as PostUpdate))
          as PostUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostUpdate create() => PostUpdate._();
  PostUpdate createEmptyInstance() => create();
  static $pb.PbList<PostUpdate> createRepeated() => $pb.PbList<PostUpdate>();
  @$core.pragma('dart2js:noInline')
  static PostUpdate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostUpdate>(create);
  static PostUpdate? _defaultInstance;

  @$pb.TagNumber(1)
  Content get content => $_getN(0);
  @$pb.TagNumber(1)
  set content(Content v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);
  @$pb.TagNumber(1)
  Content ensureContent() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get hidden => $_getBF(1);
  @$pb.TagNumber(2)
  set hidden($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasHidden() => $_has(1);
  @$pb.TagNumber(2)
  void clearHidden() => clearField(2);
}

class SpaceById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SpaceById',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOM<Space>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'space',
        subBuilder: Space.create)
    ..hasRequiredFields = false;

  SpaceById._() : super();
  factory SpaceById({
    Space? space,
  }) {
    final _result = create();
    if (space != null) {
      _result.space = space;
    }
    return _result;
  }
  factory SpaceById.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpaceById.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpaceById clone() => SpaceById()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpaceById copyWith(void Function(SpaceById) updates) =>
      super.copyWith((message) => updates(message as SpaceById))
          as SpaceById; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceById create() => SpaceById._();
  SpaceById createEmptyInstance() => create();
  static $pb.PbList<SpaceById> createRepeated() => $pb.PbList<SpaceById>();
  @$core.pragma('dart2js:noInline')
  static SpaceById getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceById>(create);
  static SpaceById? _defaultInstance;

  @$pb.TagNumber(1)
  Space get space => $_getN(0);
  @$pb.TagNumber(1)
  set space(Space v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpace() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpace() => clearField(1);
  @$pb.TagNumber(1)
  Space ensureSpace() => $_ensure(0);
}

class SpaceByHandle extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SpaceByHandle',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOM<Space>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'space',
        subBuilder: Space.create)
    ..hasRequiredFields = false;

  SpaceByHandle._() : super();
  factory SpaceByHandle({
    Space? space,
  }) {
    final _result = create();
    if (space != null) {
      _result.space = space;
    }
    return _result;
  }
  factory SpaceByHandle.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpaceByHandle.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpaceByHandle clone() => SpaceByHandle()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpaceByHandle copyWith(void Function(SpaceByHandle) updates) =>
      super.copyWith((message) => updates(message as SpaceByHandle))
          as SpaceByHandle; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceByHandle create() => SpaceByHandle._();
  SpaceByHandle createEmptyInstance() => create();
  static $pb.PbList<SpaceByHandle> createRepeated() =>
      $pb.PbList<SpaceByHandle>();
  @$core.pragma('dart2js:noInline')
  static SpaceByHandle getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpaceByHandle>(create);
  static SpaceByHandle? _defaultInstance;

  @$pb.TagNumber(1)
  Space get space => $_getN(0);
  @$pb.TagNumber(1)
  set space(Space v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpace() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpace() => clearField(1);
  @$pb.TagNumber(1)
  Space ensureSpace() => $_ensure(0);
}

class PostById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostById',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOM<Post>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'post',
        subBuilder: Post.create)
    ..hasRequiredFields = false;

  PostById._() : super();
  factory PostById({
    Post? post,
  }) {
    final _result = create();
    if (post != null) {
      _result.post = post;
    }
    return _result;
  }
  factory PostById.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostById.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostById clone() => PostById()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostById copyWith(void Function(PostById) updates) =>
      super.copyWith((message) => updates(message as PostById))
          as PostById; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostById create() => PostById._();
  PostById createEmptyInstance() => create();
  static $pb.PbList<PostById> createRepeated() => $pb.PbList<PostById>();
  @$core.pragma('dart2js:noInline')
  static PostById getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PostById>(create);
  static PostById? _defaultInstance;

  @$pb.TagNumber(1)
  Post get post => $_getN(0);
  @$pb.TagNumber(1)
  set post(Post v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPost() => $_has(0);
  @$pb.TagNumber(1)
  void clearPost() => clearField(1);
  @$pb.TagNumber(1)
  Post ensurePost() => $_ensure(0);
}

class ReactionById extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ReactionById',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOM<Reaction>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'reaction',
        subBuilder: Reaction.create)
    ..hasRequiredFields = false;

  ReactionById._() : super();
  factory ReactionById({
    Reaction? reaction,
  }) {
    final _result = create();
    if (reaction != null) {
      _result.reaction = reaction;
    }
    return _result;
  }
  factory ReactionById.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReactionById.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReactionById clone() => ReactionById()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReactionById copyWith(void Function(ReactionById) updates) =>
      super.copyWith((message) => updates(message as ReactionById))
          as ReactionById; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReactionById create() => ReactionById._();
  ReactionById createEmptyInstance() => create();
  static $pb.PbList<ReactionById> createRepeated() =>
      $pb.PbList<ReactionById>();
  @$core.pragma('dart2js:noInline')
  static ReactionById getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReactionById>(create);
  static ReactionById? _defaultInstance;

  @$pb.TagNumber(1)
  Reaction get reaction => $_getN(0);
  @$pb.TagNumber(1)
  set reaction(Reaction v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReaction() => $_has(0);
  @$pb.TagNumber(1)
  void clearReaction() => clearField(1);
  @$pb.TagNumber(1)
  Reaction ensureReaction() => $_ensure(0);
}

class PostIdsBySpaceId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostIdsBySpaceId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'postIds',
        $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  PostIdsBySpaceId._() : super();
  factory PostIdsBySpaceId({
    $core.Iterable<$fixnum.Int64>? postIds,
  }) {
    final _result = create();
    if (postIds != null) {
      _result.postIds.addAll(postIds);
    }
    return _result;
  }
  factory PostIdsBySpaceId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostIdsBySpaceId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostIdsBySpaceId clone() => PostIdsBySpaceId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostIdsBySpaceId copyWith(void Function(PostIdsBySpaceId) updates) =>
      super.copyWith((message) => updates(message as PostIdsBySpaceId))
          as PostIdsBySpaceId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostIdsBySpaceId create() => PostIdsBySpaceId._();
  PostIdsBySpaceId createEmptyInstance() => create();
  static $pb.PbList<PostIdsBySpaceId> createRepeated() =>
      $pb.PbList<PostIdsBySpaceId>();
  @$core.pragma('dart2js:noInline')
  static PostIdsBySpaceId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostIdsBySpaceId>(create);
  static PostIdsBySpaceId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get postIds => $_getList(0);
}

class ReactionIdsByPostId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ReactionIdsByPostId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'reactionIds',
        $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  ReactionIdsByPostId._() : super();
  factory ReactionIdsByPostId({
    $core.Iterable<$fixnum.Int64>? reactionIds,
  }) {
    final _result = create();
    if (reactionIds != null) {
      _result.reactionIds.addAll(reactionIds);
    }
    return _result;
  }
  factory ReactionIdsByPostId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReactionIdsByPostId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReactionIdsByPostId clone() => ReactionIdsByPostId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReactionIdsByPostId copyWith(void Function(ReactionIdsByPostId) updates) =>
      super.copyWith((message) => updates(message as ReactionIdsByPostId))
          as ReactionIdsByPostId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReactionIdsByPostId create() => ReactionIdsByPostId._();
  ReactionIdsByPostId createEmptyInstance() => create();
  static $pb.PbList<ReactionIdsByPostId> createRepeated() =>
      $pb.PbList<ReactionIdsByPostId>();
  @$core.pragma('dart2js:noInline')
  static ReactionIdsByPostId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReactionIdsByPostId>(create);
  static ReactionIdsByPostId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get reactionIds => $_getList(0);
}

class ReplyIdsByPostId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ReplyIdsByPostId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'replyIds',
        $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  ReplyIdsByPostId._() : super();
  factory ReplyIdsByPostId({
    $core.Iterable<$fixnum.Int64>? replyIds,
  }) {
    final _result = create();
    if (replyIds != null) {
      _result.replyIds.addAll(replyIds);
    }
    return _result;
  }
  factory ReplyIdsByPostId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReplyIdsByPostId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReplyIdsByPostId clone() => ReplyIdsByPostId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReplyIdsByPostId copyWith(void Function(ReplyIdsByPostId) updates) =>
      super.copyWith((message) => updates(message as ReplyIdsByPostId))
          as ReplyIdsByPostId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplyIdsByPostId create() => ReplyIdsByPostId._();
  ReplyIdsByPostId createEmptyInstance() => create();
  static $pb.PbList<ReplyIdsByPostId> createRepeated() =>
      $pb.PbList<ReplyIdsByPostId>();
  @$core.pragma('dart2js:noInline')
  static ReplyIdsByPostId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReplyIdsByPostId>(create);
  static ReplyIdsByPostId? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get replyIds => $_getList(0);
}

class SocialAccountByAccountId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SocialAccountByAccountId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOM<SocialAccount>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'socialAccount',
        subBuilder: SocialAccount.create)
    ..hasRequiredFields = false;

  SocialAccountByAccountId._() : super();
  factory SocialAccountByAccountId({
    SocialAccount? socialAccount,
  }) {
    final _result = create();
    if (socialAccount != null) {
      _result.socialAccount = socialAccount;
    }
    return _result;
  }
  factory SocialAccountByAccountId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SocialAccountByAccountId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SocialAccountByAccountId clone() =>
      SocialAccountByAccountId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SocialAccountByAccountId copyWith(
          void Function(SocialAccountByAccountId) updates) =>
      super.copyWith((message) => updates(message as SocialAccountByAccountId))
          as SocialAccountByAccountId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SocialAccountByAccountId create() => SocialAccountByAccountId._();
  SocialAccountByAccountId createEmptyInstance() => create();
  static $pb.PbList<SocialAccountByAccountId> createRepeated() =>
      $pb.PbList<SocialAccountByAccountId>();
  @$core.pragma('dart2js:noInline')
  static SocialAccountByAccountId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SocialAccountByAccountId>(create);
  static SocialAccountByAccountId? _defaultInstance;

  @$pb.TagNumber(1)
  SocialAccount get socialAccount => $_getN(0);
  @$pb.TagNumber(1)
  set socialAccount(SocialAccount v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSocialAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocialAccount() => clearField(1);
  @$pb.TagNumber(1)
  SocialAccount ensureSocialAccount() => $_ensure(0);
}

class NextSpaceId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NextSpaceId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  NextSpaceId._() : super();
  factory NextSpaceId({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory NextSpaceId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NextSpaceId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NextSpaceId clone() => NextSpaceId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NextSpaceId copyWith(void Function(NextSpaceId) updates) =>
      super.copyWith((message) => updates(message as NextSpaceId))
          as NextSpaceId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NextSpaceId create() => NextSpaceId._();
  NextSpaceId createEmptyInstance() => create();
  static $pb.PbList<NextSpaceId> createRepeated() => $pb.PbList<NextSpaceId>();
  @$core.pragma('dart2js:noInline')
  static NextSpaceId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NextSpaceId>(create);
  static NextSpaceId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class NextPostId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NextPostId',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  NextPostId._() : super();
  factory NextPostId({
    $fixnum.Int64? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory NextPostId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NextPostId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NextPostId clone() => NextPostId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NextPostId copyWith(void Function(NextPostId) updates) =>
      super.copyWith((message) => updates(message as NextPostId))
          as NextPostId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NextPostId create() => NextPostId._();
  NextPostId createEmptyInstance() => create();
  static $pb.PbList<NextPostId> createRepeated() => $pb.PbList<NextPostId>();
  @$core.pragma('dart2js:noInline')
  static NextPostId getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NextPostId>(create);
  static NextPostId? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SpaceIdsByOwner extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SpaceIdsByOwner',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spaceIds',
        $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  SpaceIdsByOwner._() : super();
  factory SpaceIdsByOwner({
    $core.Iterable<$fixnum.Int64>? spaceIds,
  }) {
    final _result = create();
    if (spaceIds != null) {
      _result.spaceIds.addAll(spaceIds);
    }
    return _result;
  }
  factory SpaceIdsByOwner.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpaceIdsByOwner.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpaceIdsByOwner clone() => SpaceIdsByOwner()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpaceIdsByOwner copyWith(void Function(SpaceIdsByOwner) updates) =>
      super.copyWith((message) => updates(message as SpaceIdsByOwner))
          as SpaceIdsByOwner; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceIdsByOwner create() => SpaceIdsByOwner._();
  SpaceIdsByOwner createEmptyInstance() => create();
  static $pb.PbList<SpaceIdsByOwner> createRepeated() =>
      $pb.PbList<SpaceIdsByOwner>();
  @$core.pragma('dart2js:noInline')
  static SpaceIdsByOwner getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpaceIdsByOwner>(create);
  static SpaceIdsByOwner? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get spaceIds => $_getList(0);
}

class SpaceFollowers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SpaceFollowers',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountIds')
    ..hasRequiredFields = false;

  SpaceFollowers._() : super();
  factory SpaceFollowers({
    $core.Iterable<$core.String>? accountIds,
  }) {
    final _result = create();
    if (accountIds != null) {
      _result.accountIds.addAll(accountIds);
    }
    return _result;
  }
  factory SpaceFollowers.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpaceFollowers.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpaceFollowers clone() => SpaceFollowers()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpaceFollowers copyWith(void Function(SpaceFollowers) updates) =>
      super.copyWith((message) => updates(message as SpaceFollowers))
          as SpaceFollowers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceFollowers create() => SpaceFollowers._();
  SpaceFollowers createEmptyInstance() => create();
  static $pb.PbList<SpaceFollowers> createRepeated() =>
      $pb.PbList<SpaceFollowers>();
  @$core.pragma('dart2js:noInline')
  static SpaceFollowers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpaceFollowers>(create);
  static SpaceFollowers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get accountIds => $_getList(0);
}

class SpacesFollowedByAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SpacesFollowedByAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spaceIds',
        $pb.PbFieldType.KU6)
    ..hasRequiredFields = false;

  SpacesFollowedByAccount._() : super();
  factory SpacesFollowedByAccount({
    $core.Iterable<$fixnum.Int64>? spaceIds,
  }) {
    final _result = create();
    if (spaceIds != null) {
      _result.spaceIds.addAll(spaceIds);
    }
    return _result;
  }
  factory SpacesFollowedByAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpacesFollowedByAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpacesFollowedByAccount clone() =>
      SpacesFollowedByAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpacesFollowedByAccount copyWith(
          void Function(SpacesFollowedByAccount) updates) =>
      super.copyWith((message) => updates(message as SpacesFollowedByAccount))
          as SpacesFollowedByAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpacesFollowedByAccount create() => SpacesFollowedByAccount._();
  SpacesFollowedByAccount createEmptyInstance() => create();
  static $pb.PbList<SpacesFollowedByAccount> createRepeated() =>
      $pb.PbList<SpacesFollowedByAccount>();
  @$core.pragma('dart2js:noInline')
  static SpacesFollowedByAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpacesFollowedByAccount>(create);
  static SpacesFollowedByAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get spaceIds => $_getList(0);
}

class AccountFollowers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AccountFollowers',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountIds')
    ..hasRequiredFields = false;

  AccountFollowers._() : super();
  factory AccountFollowers({
    $core.Iterable<$core.String>? accountIds,
  }) {
    final _result = create();
    if (accountIds != null) {
      _result.accountIds.addAll(accountIds);
    }
    return _result;
  }
  factory AccountFollowers.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AccountFollowers.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AccountFollowers clone() => AccountFollowers()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AccountFollowers copyWith(void Function(AccountFollowers) updates) =>
      super.copyWith((message) => updates(message as AccountFollowers))
          as AccountFollowers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountFollowers create() => AccountFollowers._();
  AccountFollowers createEmptyInstance() => create();
  static $pb.PbList<AccountFollowers> createRepeated() =>
      $pb.PbList<AccountFollowers>();
  @$core.pragma('dart2js:noInline')
  static AccountFollowers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountFollowers>(create);
  static AccountFollowers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get accountIds => $_getList(0);
}

class AccountsFollowedByAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'AccountsFollowedByAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..pPS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountIds')
    ..hasRequiredFields = false;

  AccountsFollowedByAccount._() : super();
  factory AccountsFollowedByAccount({
    $core.Iterable<$core.String>? accountIds,
  }) {
    final _result = create();
    if (accountIds != null) {
      _result.accountIds.addAll(accountIds);
    }
    return _result;
  }
  factory AccountsFollowedByAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AccountsFollowedByAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  AccountsFollowedByAccount clone() =>
      AccountsFollowedByAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  AccountsFollowedByAccount copyWith(
          void Function(AccountsFollowedByAccount) updates) =>
      super.copyWith((message) => updates(message as AccountsFollowedByAccount))
          as AccountsFollowedByAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountsFollowedByAccount create() => AccountsFollowedByAccount._();
  AccountsFollowedByAccount createEmptyInstance() => create();
  static $pb.PbList<AccountsFollowedByAccount> createRepeated() =>
      $pb.PbList<AccountsFollowedByAccount>();
  @$core.pragma('dart2js:noInline')
  static AccountsFollowedByAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountsFollowedByAccount>(create);
  static AccountsFollowedByAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get accountIds => $_getList(0);
}

class GeneratedAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GeneratedAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'publicKey')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'seedPhrase')
    ..hasRequiredFields = false;

  GeneratedAccount._() : super();
  factory GeneratedAccount({
    $core.String? publicKey,
    $core.String? seedPhrase,
  }) {
    final _result = create();
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (seedPhrase != null) {
      _result.seedPhrase = seedPhrase;
    }
    return _result;
  }
  factory GeneratedAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GeneratedAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GeneratedAccount clone() => GeneratedAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GeneratedAccount copyWith(void Function(GeneratedAccount) updates) =>
      super.copyWith((message) => updates(message as GeneratedAccount))
          as GeneratedAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GeneratedAccount create() => GeneratedAccount._();
  GeneratedAccount createEmptyInstance() => create();
  static $pb.PbList<GeneratedAccount> createRepeated() =>
      $pb.PbList<GeneratedAccount>();
  @$core.pragma('dart2js:noInline')
  static GeneratedAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GeneratedAccount>(create);
  static GeneratedAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get publicKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set publicKey($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get seedPhrase => $_getSZ(1);
  @$pb.TagNumber(2)
  set seedPhrase($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSeedPhrase() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeedPhrase() => clearField(2);
}

class ImportedAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ImportedAccount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'publicKey')
    ..hasRequiredFields = false;

  ImportedAccount._() : super();
  factory ImportedAccount({
    $core.String? publicKey,
  }) {
    final _result = create();
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    return _result;
  }
  factory ImportedAccount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImportedAccount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImportedAccount clone() => ImportedAccount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImportedAccount copyWith(void Function(ImportedAccount) updates) =>
      super.copyWith((message) => updates(message as ImportedAccount))
          as ImportedAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImportedAccount create() => ImportedAccount._();
  ImportedAccount createEmptyInstance() => create();
  static $pb.PbList<ImportedAccount> createRepeated() =>
      $pb.PbList<ImportedAccount>();
  @$core.pragma('dart2js:noInline')
  static ImportedAccount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImportedAccount>(create);
  static ImportedAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get publicKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set publicKey($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);
}

class PostReactionCreated extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostReactionCreated',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  PostReactionCreated._() : super();
  factory PostReactionCreated({
    $fixnum.Int64? postId,
    $fixnum.Int64? reactionId,
  }) {
    final _result = create();
    if (postId != null) {
      _result.postId = postId;
    }
    if (reactionId != null) {
      _result.reactionId = reactionId;
    }
    return _result;
  }
  factory PostReactionCreated.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostReactionCreated.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostReactionCreated clone() => PostReactionCreated()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostReactionCreated copyWith(void Function(PostReactionCreated) updates) =>
      super.copyWith((message) => updates(message as PostReactionCreated))
          as PostReactionCreated; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostReactionCreated create() => PostReactionCreated._();
  PostReactionCreated createEmptyInstance() => create();
  static $pb.PbList<PostReactionCreated> createRepeated() =>
      $pb.PbList<PostReactionCreated>();
  @$core.pragma('dart2js:noInline')
  static PostReactionCreated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostReactionCreated>(create);
  static PostReactionCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get postId => $_getI64(0);
  @$pb.TagNumber(1)
  set postId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPostId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPostId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get reactionId => $_getI64(1);
  @$pb.TagNumber(2)
  set reactionId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasReactionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearReactionId() => clearField(2);
}

class PostCreated extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostCreated',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountId')
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'postId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  PostCreated._() : super();
  factory PostCreated({
    $core.String? accountId,
    $fixnum.Int64? postId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (postId != null) {
      _result.postId = postId;
    }
    return _result;
  }
  factory PostCreated.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostCreated.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostCreated clone() => PostCreated()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostCreated copyWith(void Function(PostCreated) updates) =>
      super.copyWith((message) => updates(message as PostCreated))
          as PostCreated; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostCreated create() => PostCreated._();
  PostCreated createEmptyInstance() => create();
  static $pb.PbList<PostCreated> createRepeated() => $pb.PbList<PostCreated>();
  @$core.pragma('dart2js:noInline')
  static PostCreated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostCreated>(create);
  static PostCreated? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get postId => $_getI64(1);
  @$pb.TagNumber(2)
  set postId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostId() => clearField(2);
}

class PostUpdated extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PostUpdated',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountId')
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'postId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  PostUpdated._() : super();
  factory PostUpdated({
    $core.String? accountId,
    $fixnum.Int64? postId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (postId != null) {
      _result.postId = postId;
    }
    return _result;
  }
  factory PostUpdated.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PostUpdated.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PostUpdated clone() => PostUpdated()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PostUpdated copyWith(void Function(PostUpdated) updates) =>
      super.copyWith((message) => updates(message as PostUpdated))
          as PostUpdated; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PostUpdated create() => PostUpdated._();
  PostUpdated createEmptyInstance() => create();
  static $pb.PbList<PostUpdated> createRepeated() => $pb.PbList<PostUpdated>();
  @$core.pragma('dart2js:noInline')
  static PostUpdated getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PostUpdated>(create);
  static PostUpdated? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get postId => $_getI64(1);
  @$pb.TagNumber(2)
  set postId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPostId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPostId() => clearField(2);
}

class SpaceFollowed extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'SpaceFollowed',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'follower')
    ..a<$fixnum.Int64>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spaceId',
        $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  SpaceFollowed._() : super();
  factory SpaceFollowed({
    $core.String? follower,
    $fixnum.Int64? spaceId,
  }) {
    final _result = create();
    if (follower != null) {
      _result.follower = follower;
    }
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    return _result;
  }
  factory SpaceFollowed.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpaceFollowed.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpaceFollowed clone() => SpaceFollowed()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpaceFollowed copyWith(void Function(SpaceFollowed) updates) =>
      super.copyWith((message) => updates(message as SpaceFollowed))
          as SpaceFollowed; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceFollowed create() => SpaceFollowed._();
  SpaceFollowed createEmptyInstance() => create();
  static $pb.PbList<SpaceFollowed> createRepeated() =>
      $pb.PbList<SpaceFollowed>();
  @$core.pragma('dart2js:noInline')
  static SpaceFollowed getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpaceFollowed>(create);
  static SpaceFollowed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get follower => $_getSZ(0);
  @$pb.TagNumber(1)
  set follower($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFollower() => $_has(0);
  @$pb.TagNumber(1)
  void clearFollower() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get spaceId => $_getI64(1);
  @$pb.TagNumber(2)
  set spaceId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSpaceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceId() => clearField(2);
}
