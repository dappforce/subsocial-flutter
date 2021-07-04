///
//  Generated code. Do not modify.
//  source: def.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use requestDescriptor instead')
const Request$json = const {
  '1': 'Request',
  '2': const [
    const {
      '1': 'space_by_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetSpaceById',
      '9': 0,
      '10': 'spaceById'
    },
    const {
      '1': 'space_by_handle',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetSpaceByHandle',
      '9': 0,
      '10': 'spaceByHandle'
    },
    const {
      '1': 'post_by_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetPostById',
      '9': 0,
      '10': 'postById'
    },
    const {
      '1': 'post_ids_by_space_id',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetPostIdsBySpaceId',
      '9': 0,
      '10': 'postIdsBySpaceId'
    },
    const {
      '1': 'reaction_by_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetReactionById',
      '9': 0,
      '10': 'reactionById'
    },
    const {
      '1': 'reaction_ids_by_post_id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetReactionIdsByPostId',
      '9': 0,
      '10': 'reactionIdsByPostId'
    },
  ],
  '8': const [
    const {'1': 'body'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode(
    'CgdSZXF1ZXN0EjkKC3NwYWNlX2J5X2lkGAEgASgLMhcuc3Vic29jaWFsLkdldFNwYWNlQnlJZEgAUglzcGFjZUJ5SWQSRQoPc3BhY2VfYnlfaGFuZGxlGAIgASgLMhsuc3Vic29jaWFsLkdldFNwYWNlQnlIYW5kbGVIAFINc3BhY2VCeUhhbmRsZRI2Cgpwb3N0X2J5X2lkGAMgASgLMhYuc3Vic29jaWFsLkdldFBvc3RCeUlkSABSCHBvc3RCeUlkElAKFHBvc3RfaWRzX2J5X3NwYWNlX2lkGAQgASgLMh4uc3Vic29jaWFsLkdldFBvc3RJZHNCeVNwYWNlSWRIAFIQcG9zdElkc0J5U3BhY2VJZBJCCg5yZWFjdGlvbl9ieV9pZBgFIAEoCzIaLnN1YnNvY2lhbC5HZXRSZWFjdGlvbkJ5SWRIAFIMcmVhY3Rpb25CeUlkElkKF3JlYWN0aW9uX2lkc19ieV9wb3N0X2lkGAYgASgLMiEuc3Vic29jaWFsLkdldFJlYWN0aW9uSWRzQnlQb3N0SWRIAFITcmVhY3Rpb25JZHNCeVBvc3RJZEIGCgRib2R5');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {
      '1': 'error',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Error',
      '9': 0,
      '10': 'error'
    },
    const {
      '1': 'space_by_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceById',
      '9': 0,
      '10': 'spaceById'
    },
    const {
      '1': 'space_by_handle',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceByByHandle',
      '9': 0,
      '10': 'spaceByHandle'
    },
    const {
      '1': 'post_by_id',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostById',
      '9': 0,
      '10': 'postById'
    },
    const {
      '1': 'post_ids_by_space_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostIdsBySpaceId',
      '9': 0,
      '10': 'postIdsBySpaceId'
    },
    const {
      '1': 'reaction_by_id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.subsocial.ReactionById',
      '9': 0,
      '10': 'reactionById'
    },
    const {
      '1': 'reaction_ids_by_post_id',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.subsocial.ReactionIdsByPostId',
      '9': 0,
      '10': 'reactionIdsByPostId'
    },
  ],
  '8': const [
    const {'1': 'body'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRIoCgVlcnJvchgBIAEoCzIQLnN1YnNvY2lhbC5FcnJvckgAUgVlcnJvchI2CgtzcGFjZV9ieV9pZBgCIAEoCzIULnN1YnNvY2lhbC5TcGFjZUJ5SWRIAFIJc3BhY2VCeUlkEkQKD3NwYWNlX2J5X2hhbmRsZRgDIAEoCzIaLnN1YnNvY2lhbC5TcGFjZUJ5QnlIYW5kbGVIAFINc3BhY2VCeUhhbmRsZRIzCgpwb3N0X2J5X2lkGAQgASgLMhMuc3Vic29jaWFsLlBvc3RCeUlkSABSCHBvc3RCeUlkEk0KFHBvc3RfaWRzX2J5X3NwYWNlX2lkGAUgASgLMhsuc3Vic29jaWFsLlBvc3RJZHNCeVNwYWNlSWRIAFIQcG9zdElkc0J5U3BhY2VJZBI/Cg5yZWFjdGlvbl9ieV9pZBgGIAEoCzIXLnN1YnNvY2lhbC5SZWFjdGlvbkJ5SWRIAFIMcmVhY3Rpb25CeUlkElYKF3JlYWN0aW9uX2lkc19ieV9wb3N0X2lkGAcgASgLMh4uc3Vic29jaWFsLlJlYWN0aW9uSWRzQnlQb3N0SWRIAFITcmVhY3Rpb25JZHNCeVBvc3RJZEIGCgRib2R5');
@$core.Deprecated('Use errorDescriptor instead')
const Error$json = const {
  '1': 'Error',
  '2': const [
    const {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.subsocial.Error.Kind',
      '10': 'kind'
    },
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
  '4': const [Error_Kind$json],
};

@$core.Deprecated('Use errorDescriptor instead')
const Error_Kind$json = const {
  '1': 'Kind',
  '2': const [
    const {'1': 'KIND_UNKNOWN', '2': 0},
    const {'1': 'KIND_NETWORK', '2': 1},
    const {'1': 'KIND_INVALID_PROTO', '2': 2},
    const {'1': 'KIND_INVALID_REQUEST', '2': 3},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIpCgRraW5kGAEgASgOMhUuc3Vic29jaWFsLkVycm9yLktpbmRSBGtpbmQSEAoDbXNnGAIgASgJUgNtc2ciXAoES2luZBIQCgxLSU5EX1VOS05PV04QABIQCgxLSU5EX05FVFdPUksQARIWChJLSU5EX0lOVkFMSURfUFJPVE8QAhIYChRLSU5EX0lOVkFMSURfUkVRVUVTVBAD');
@$core.Deprecated('Use getSpaceByIdDescriptor instead')
const GetSpaceById$json = const {
  '1': 'GetSpaceById',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `GetSpaceById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpaceByIdDescriptor = $convert
    .base64Decode('CgxHZXRTcGFjZUJ5SWQSGQoIc3BhY2VfaWQYASABKARSB3NwYWNlSWQ=');
@$core.Deprecated('Use getSpaceByHandleDescriptor instead')
const GetSpaceByHandle$json = const {
  '1': 'GetSpaceByHandle',
  '2': const [
    const {'1': 'handle', '3': 1, '4': 1, '5': 9, '10': 'handle'},
  ],
};

/// Descriptor for `GetSpaceByHandle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpaceByHandleDescriptor = $convert
    .base64Decode('ChBHZXRTcGFjZUJ5SGFuZGxlEhYKBmhhbmRsZRgBIAEoCVIGaGFuZGxl');
@$core.Deprecated('Use getPostByIdDescriptor instead')
const GetPostById$json = const {
  '1': 'GetPostById',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
  ],
};

/// Descriptor for `GetPostById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPostByIdDescriptor = $convert
    .base64Decode('CgtHZXRQb3N0QnlJZBIXCgdwb3N0X2lkGAEgASgEUgZwb3N0SWQ=');
@$core.Deprecated('Use getReactionByIdDescriptor instead')
const GetReactionById$json = const {
  '1': 'GetReactionById',
  '2': const [
    const {'1': 'reaction_id', '3': 1, '4': 1, '5': 4, '10': 'reactionId'},
  ],
};

/// Descriptor for `GetReactionById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReactionByIdDescriptor = $convert.base64Decode(
    'Cg9HZXRSZWFjdGlvbkJ5SWQSHwoLcmVhY3Rpb25faWQYASABKARSCnJlYWN0aW9uSWQ=');
@$core.Deprecated('Use getPostIdsBySpaceIdDescriptor instead')
const GetPostIdsBySpaceId$json = const {
  '1': 'GetPostIdsBySpaceId',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `GetPostIdsBySpaceId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPostIdsBySpaceIdDescriptor =
    $convert.base64Decode(
        'ChNHZXRQb3N0SWRzQnlTcGFjZUlkEhkKCHNwYWNlX2lkGAEgASgEUgdzcGFjZUlk');
@$core.Deprecated('Use getReactionIdsByPostIdDescriptor instead')
const GetReactionIdsByPostId$json = const {
  '1': 'GetReactionIdsByPostId',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
  ],
};

/// Descriptor for `GetReactionIdsByPostId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReactionIdsByPostIdDescriptor =
    $convert.base64Decode(
        'ChZHZXRSZWFjdGlvbklkc0J5UG9zdElkEhcKB3Bvc3RfaWQYASABKARSBnBvc3RJZA==');
@$core.Deprecated('Use contentDescriptor instead')
const Content$json = const {
  '1': 'Content',
  '2': const [
    const {'1': 'raw', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'raw'},
    const {'1': 'ipfs', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'ipfs'},
    const {'1': 'hyper', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'hyper'},
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `Content`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contentDescriptor = $convert.base64Decode(
    'CgdDb250ZW50EhIKA3JhdxgBIAEoDEgAUgNyYXcSFAoEaXBmcxgCIAEoCUgAUgRpcGZzEhYKBWh5cGVyGAMgASgJSABSBWh5cGVyQgcKBXZhbHVl');
@$core.Deprecated('Use postExtensionDescriptor instead')
const PostExtension$json = const {
  '1': 'PostExtension',
  '2': const [
    const {
      '1': 'comment',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Comment',
      '9': 0,
      '10': 'comment'
    },
    const {
      '1': 'shared_post',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SharedPost',
      '9': 0,
      '10': 'sharedPost'
    },
  ],
  '8': const [
    const {'1': 'value'},
  ],
};

/// Descriptor for `PostExtension`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postExtensionDescriptor = $convert.base64Decode(
    'Cg1Qb3N0RXh0ZW5zaW9uEi4KB2NvbW1lbnQYASABKAsyEi5zdWJzb2NpYWwuQ29tbWVudEgAUgdjb21tZW50EjgKC3NoYXJlZF9wb3N0GAIgASgLMhUuc3Vic29jaWFsLlNoYXJlZFBvc3RIAFIKc2hhcmVkUG9zdEIHCgV2YWx1ZQ==');
@$core.Deprecated('Use spaceDescriptor instead')
const Space$json = const {
  '1': 'Space',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'created', '3': 2, '4': 1, '5': 4, '10': 'created'},
    const {'1': 'updated', '3': 3, '4': 1, '5': 4, '10': 'updated'},
    const {'1': 'owner', '3': 4, '4': 1, '5': 9, '10': 'owner'},
    const {'1': 'parent_id', '3': 5, '4': 1, '5': 4, '10': 'parentId'},
    const {'1': 'handle', '3': 6, '4': 1, '5': 9, '10': 'handle'},
    const {
      '1': 'content',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'content'
    },
    const {'1': 'hidden', '3': 8, '4': 1, '5': 8, '10': 'hidden'},
    const {'1': 'posts_count', '3': 9, '4': 1, '5': 13, '10': 'postsCount'},
    const {
      '1': 'hidden_posts_count',
      '3': 10,
      '4': 1,
      '5': 13,
      '10': 'hiddenPostsCount'
    },
    const {
      '1': 'followers_count',
      '3': 11,
      '4': 1,
      '5': 13,
      '10': 'followersCount'
    },
    const {'1': 'score', '3': 12, '4': 1, '5': 5, '10': 'score'},
  ],
};

/// Descriptor for `Space`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceDescriptor = $convert.base64Decode(
    'CgVTcGFjZRIOCgJpZBgBIAEoBFICaWQSGAoHY3JlYXRlZBgCIAEoBFIHY3JlYXRlZBIYCgd1cGRhdGVkGAMgASgEUgd1cGRhdGVkEhQKBW93bmVyGAQgASgJUgVvd25lchIbCglwYXJlbnRfaWQYBSABKARSCHBhcmVudElkEhYKBmhhbmRsZRgGIAEoCVIGaGFuZGxlEiwKB2NvbnRlbnQYByABKAsyEi5zdWJzb2NpYWwuQ29udGVudFIHY29udGVudBIWCgZoaWRkZW4YCCABKAhSBmhpZGRlbhIfCgtwb3N0c19jb3VudBgJIAEoDVIKcG9zdHNDb3VudBIsChJoaWRkZW5fcG9zdHNfY291bnQYCiABKA1SEGhpZGRlblBvc3RzQ291bnQSJwoPZm9sbG93ZXJzX2NvdW50GAsgASgNUg5mb2xsb3dlcnNDb3VudBIUCgVzY29yZRgMIAEoBVIFc2NvcmU=');
@$core.Deprecated('Use postDescriptor instead')
const Post$json = const {
  '1': 'Post',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'created', '3': 2, '4': 1, '5': 4, '10': 'created'},
    const {'1': 'updated', '3': 3, '4': 1, '5': 4, '10': 'updated'},
    const {'1': 'owner', '3': 4, '4': 1, '5': 9, '10': 'owner'},
    const {
      '1': 'extension',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostExtension',
      '10': 'extension'
    },
    const {'1': 'space_id', '3': 6, '4': 1, '5': 4, '10': 'spaceId'},
    const {
      '1': 'content',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'content'
    },
    const {'1': 'hidden', '3': 8, '4': 1, '5': 8, '10': 'hidden'},
    const {'1': 'replies_count', '3': 9, '4': 1, '5': 13, '10': 'repliesCount'},
    const {
      '1': 'hidden_replies_count',
      '3': 10,
      '4': 1,
      '5': 13,
      '10': 'hiddenRepliesCount'
    },
    const {'1': 'shares_count', '3': 11, '4': 1, '5': 13, '10': 'sharesCount'},
    const {
      '1': 'upvotes_count',
      '3': 12,
      '4': 1,
      '5': 13,
      '10': 'upvotesCount'
    },
    const {
      '1': 'downvotes_count',
      '3': 13,
      '4': 1,
      '5': 13,
      '10': 'downvotesCount'
    },
    const {'1': 'score', '3': 14, '4': 1, '5': 5, '10': 'score'},
  ],
};

/// Descriptor for `Post`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDescriptor = $convert.base64Decode(
    'CgRQb3N0Eg4KAmlkGAEgASgEUgJpZBIYCgdjcmVhdGVkGAIgASgEUgdjcmVhdGVkEhgKB3VwZGF0ZWQYAyABKARSB3VwZGF0ZWQSFAoFb3duZXIYBCABKAlSBW93bmVyEjYKCWV4dGVuc2lvbhgFIAEoCzIYLnN1YnNvY2lhbC5Qb3N0RXh0ZW5zaW9uUglleHRlbnNpb24SGQoIc3BhY2VfaWQYBiABKARSB3NwYWNlSWQSLAoHY29udGVudBgHIAEoCzISLnN1YnNvY2lhbC5Db250ZW50Ugdjb250ZW50EhYKBmhpZGRlbhgIIAEoCFIGaGlkZGVuEiMKDXJlcGxpZXNfY291bnQYCSABKA1SDHJlcGxpZXNDb3VudBIwChRoaWRkZW5fcmVwbGllc19jb3VudBgKIAEoDVISaGlkZGVuUmVwbGllc0NvdW50EiEKDHNoYXJlc19jb3VudBgLIAEoDVILc2hhcmVzQ291bnQSIwoNdXB2b3Rlc19jb3VudBgMIAEoDVIMdXB2b3Rlc0NvdW50EicKD2Rvd252b3Rlc19jb3VudBgNIAEoDVIOZG93bnZvdGVzQ291bnQSFAoFc2NvcmUYDiABKAVSBXNjb3Jl');
@$core.Deprecated('Use commentDescriptor instead')
const Comment$json = const {
  '1': 'Comment',
  '2': const [
    const {'1': 'parent_id', '3': 1, '4': 1, '5': 4, '10': 'parentId'},
    const {'1': 'root_post_id', '3': 2, '4': 1, '5': 4, '10': 'rootPostId'},
  ],
};

/// Descriptor for `Comment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commentDescriptor = $convert.base64Decode(
    'CgdDb21tZW50EhsKCXBhcmVudF9pZBgBIAEoBFIIcGFyZW50SWQSIAoMcm9vdF9wb3N0X2lkGAIgASgEUgpyb290UG9zdElk');
@$core.Deprecated('Use sharedPostDescriptor instead')
const SharedPost$json = const {
  '1': 'SharedPost',
  '2': const [
    const {'1': 'root_post_id', '3': 1, '4': 1, '5': 4, '10': 'rootPostId'},
  ],
};

/// Descriptor for `SharedPost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sharedPostDescriptor = $convert.base64Decode(
    'CgpTaGFyZWRQb3N0EiAKDHJvb3RfcG9zdF9pZBgBIAEoBFIKcm9vdFBvc3RJZA==');
@$core.Deprecated('Use reactionDescriptor instead')
const Reaction$json = const {
  '1': 'Reaction',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'created', '3': 2, '4': 1, '5': 4, '10': 'created'},
    const {'1': 'updated', '3': 3, '4': 1, '5': 4, '10': 'updated'},
    const {
      '1': 'kind',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.subsocial.Reaction.ReactionKind',
      '10': 'kind'
    },
  ],
  '4': const [Reaction_ReactionKind$json],
};

@$core.Deprecated('Use reactionDescriptor instead')
const Reaction_ReactionKind$json = const {
  '1': 'ReactionKind',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'UP_VOTE', '2': 1},
    const {'1': 'DOWN_VOTE', '2': 2},
  ],
};

/// Descriptor for `Reaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionDescriptor = $convert.base64Decode(
    'CghSZWFjdGlvbhIOCgJpZBgBIAEoBFICaWQSGAoHY3JlYXRlZBgCIAEoBFIHY3JlYXRlZBIYCgd1cGRhdGVkGAMgASgEUgd1cGRhdGVkEjQKBGtpbmQYBCABKA4yIC5zdWJzb2NpYWwuUmVhY3Rpb24uUmVhY3Rpb25LaW5kUgRraW5kIjcKDFJlYWN0aW9uS2luZBILCgdVTktOT1dOEAASCwoHVVBfVk9URRABEg0KCURPV05fVk9URRAC');
@$core.Deprecated('Use spaceByIdDescriptor instead')
const SpaceById$json = const {
  '1': 'SpaceById',
  '2': const [
    const {
      '1': 'space',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Space',
      '10': 'space'
    },
  ],
};

/// Descriptor for `SpaceById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceByIdDescriptor = $convert.base64Decode(
    'CglTcGFjZUJ5SWQSJgoFc3BhY2UYASABKAsyEC5zdWJzb2NpYWwuU3BhY2VSBXNwYWNl');
@$core.Deprecated('Use spaceByByHandleDescriptor instead')
const SpaceByByHandle$json = const {
  '1': 'SpaceByByHandle',
  '2': const [
    const {
      '1': 'space',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Space',
      '10': 'space'
    },
  ],
};

/// Descriptor for `SpaceByByHandle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceByByHandleDescriptor = $convert.base64Decode(
    'Cg9TcGFjZUJ5QnlIYW5kbGUSJgoFc3BhY2UYASABKAsyEC5zdWJzb2NpYWwuU3BhY2VSBXNwYWNl');
@$core.Deprecated('Use postByIdDescriptor instead')
const PostById$json = const {
  '1': 'PostById',
  '2': const [
    const {
      '1': 'post',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Post',
      '10': 'post'
    },
  ],
};

/// Descriptor for `PostById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postByIdDescriptor = $convert.base64Decode(
    'CghQb3N0QnlJZBIjCgRwb3N0GAEgASgLMg8uc3Vic29jaWFsLlBvc3RSBHBvc3Q=');
@$core.Deprecated('Use reactionByIdDescriptor instead')
const ReactionById$json = const {
  '1': 'ReactionById',
  '2': const [
    const {
      '1': 'reaction',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Reaction',
      '10': 'reaction'
    },
  ],
};

/// Descriptor for `ReactionById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionByIdDescriptor = $convert.base64Decode(
    'CgxSZWFjdGlvbkJ5SWQSLwoIcmVhY3Rpb24YASABKAsyEy5zdWJzb2NpYWwuUmVhY3Rpb25SCHJlYWN0aW9u');
@$core.Deprecated('Use postIdsBySpaceIdDescriptor instead')
const PostIdsBySpaceId$json = const {
  '1': 'PostIdsBySpaceId',
  '2': const [
    const {
      '1': 'post_id',
      '3': 1,
      '4': 3,
      '5': 4,
      '8': const {'2': true},
      '10': 'postId',
    },
  ],
};

/// Descriptor for `PostIdsBySpaceId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postIdsBySpaceIdDescriptor = $convert.base64Decode(
    'ChBQb3N0SWRzQnlTcGFjZUlkEhsKB3Bvc3RfaWQYASADKARCAhABUgZwb3N0SWQ=');
@$core.Deprecated('Use reactionIdsByPostIdDescriptor instead')
const ReactionIdsByPostId$json = const {
  '1': 'ReactionIdsByPostId',
  '2': const [
    const {
      '1': 'reaction_id',
      '3': 1,
      '4': 3,
      '5': 4,
      '8': const {'2': true},
      '10': 'reactionId',
    },
  ],
};

/// Descriptor for `ReactionIdsByPostId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionIdsByPostIdDescriptor = $convert.base64Decode(
    'ChNSZWFjdGlvbklkc0J5UG9zdElkEiMKC3JlYWN0aW9uX2lkGAEgAygEQgIQAVIKcmVhY3Rpb25JZA==');