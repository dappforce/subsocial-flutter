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
    0: Request_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Request',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<GetSpaceById>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceById',
        subBuilder: GetSpaceById.create)
    ..aOM<GetSpaceByHandle>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceByHandle',
        subBuilder: GetSpaceByHandle.create)
    ..aOM<GetPostById>(
        3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postById',
        subBuilder: GetPostById.create)
    ..aOM<GetPostIdsBySpaceId>(
        4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postIdsBySpaceId',
        subBuilder: GetPostIdsBySpaceId.create)
    ..aOM<GetReactionById>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionById', subBuilder: GetReactionById.create)
    ..aOM<GetReactionIdsByPostId>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionIdsByPostId', subBuilder: GetReactionIdsByPostId.create)
    ..hasRequiredFields = false;

  Request._() : super();
  factory Request({
    GetSpaceById? spaceById,
    GetSpaceByHandle? spaceByHandle,
    GetPostById? postById,
    GetPostIdsBySpaceId? postIdsBySpaceId,
    GetReactionById? reactionById,
    GetReactionIdsByPostId? reactionIdsByPostId,
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
}

enum Response_Body {
  error,
  spaceById,
  spaceByHandle,
  postById,
  postIdsBySpaceId,
  reactionById,
  reactionIdsByPostId,
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
    0: Response_Body.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Response',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'subsocial'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOM<Error>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error',
        subBuilder: Error.create)
    ..aOM<SpaceById>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceById',
        subBuilder: SpaceById.create)
    ..aOM<SpaceByHandle>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceByHandle',
        subBuilder: SpaceByHandle.create)
    ..aOM<PostById>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postById',
        subBuilder: PostById.create)
    ..aOM<PostIdsBySpaceId>(
        5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postIdsBySpaceId',
        subBuilder: PostIdsBySpaceId.create)
    ..aOM<ReactionById>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionById', subBuilder: ReactionById.create)
    ..aOM<ReactionIdsByPostId>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reactionIdsByPostId', subBuilder: ReactionIdsByPostId.create)
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

enum PostExtension_Value { comment, sharedPost, notSet }

class PostExtension extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PostExtension_Value>
      _PostExtension_ValueByTag = {
    1: PostExtension_Value.comment,
    2: PostExtension_Value.sharedPost,
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
    ..oo(0, [1, 2])
    ..aOM<Comment>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'comment',
        subBuilder: Comment.create)
    ..aOM<SharedPost>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sharedPost',
        subBuilder: SharedPost.create)
    ..hasRequiredFields = false;

  PostExtension._() : super();
  factory PostExtension({
    Comment? comment,
    SharedPost? sharedPost,
  }) {
    final _result = create();
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
  Comment get comment => $_getN(0);
  @$pb.TagNumber(1)
  set comment(Comment v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasComment() => $_has(0);
  @$pb.TagNumber(1)
  void clearComment() => clearField(1);
  @$pb.TagNumber(1)
  Comment ensureComment() => $_ensure(0);

  @$pb.TagNumber(2)
  SharedPost get sharedPost => $_getN(1);
  @$pb.TagNumber(2)
  set sharedPost(SharedPost v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSharedPost() => $_has(1);
  @$pb.TagNumber(2)
  void clearSharedPost() => clearField(2);
  @$pb.TagNumber(2)
  SharedPost ensureSharedPost() => $_ensure(1);
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
    ..aOM<PostExtension>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extension', subBuilder: PostExtension.create)
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
    PostExtension? extension_5,
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
    if (extension_5 != null) {
      _result.extension_5 = extension_5;
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
  PostExtension get extension_5 => $_getN(4);
  @$pb.TagNumber(5)
  set extension_5(PostExtension v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasExtension_5() => $_has(4);
  @$pb.TagNumber(5)
  void clearExtension_5() => clearField(5);
  @$pb.TagNumber(5)
  PostExtension ensureExtension_5() => $_ensure(4);

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
    ..e<Reaction_ReactionKind>(
        4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: Reaction_ReactionKind.UNKNOWN,
        valueOf: Reaction_ReactionKind.valueOf,
        enumValues: Reaction_ReactionKind.values)
    ..hasRequiredFields = false;

  Reaction._() : super();
  factory Reaction({
    $fixnum.Int64? id,
    WhoAndWhen? created,
    WhoAndWhen? updated,
    Reaction_ReactionKind? kind,
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
  Reaction_ReactionKind get kind => $_getN(3);
  @$pb.TagNumber(4)
  set kind(Reaction_ReactionKind v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasKind() => $_has(3);
  @$pb.TagNumber(4)
  void clearKind() => clearField(4);
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
