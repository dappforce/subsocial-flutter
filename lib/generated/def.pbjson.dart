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
    const {
      '1': 'reply_ids_by_post_id',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetReplyIdsByPostId',
      '9': 0,
      '10': 'replyIdsByPostId'
    },
    const {
      '1': 'social_account_by_account_id',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetSocialAccountByAccountId',
      '9': 0,
      '10': 'socialAccountByAccountId'
    },
    const {
      '1': 'next_space_id',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetNextSpaceId',
      '9': 0,
      '10': 'nextSpaceId'
    },
    const {
      '1': 'next_post_id',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetNextPostId',
      '9': 0,
      '10': 'nextPostId'
    },
    const {
      '1': 'space_ids_by_owner',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetSpaceIdsByOwner',
      '9': 0,
      '10': 'spaceIdsByOwner'
    },
    const {
      '1': 'space_followers',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetSpaceFollowers',
      '9': 0,
      '10': 'spaceFollowers'
    },
    const {
      '1': 'spaces_followed_by_account',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetSpacesFollowedByAccount',
      '9': 0,
      '10': 'spacesFollowedByAccount'
    },
    const {
      '1': 'account_followers',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetAccountFollowers',
      '9': 0,
      '10': 'accountFollowers'
    },
    const {
      '1': 'accounts_followed_by_account',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetAccountsFollowedByAccount',
      '9': 0,
      '10': 'accountsFollowedByAccount'
    },
    const {
      '1': 'generate_account',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GenerateAccount',
      '9': 0,
      '10': 'generateAccount'
    },
    const {
      '1': 'import_account',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.subsocial.ImportAccount',
      '9': 0,
      '10': 'importAccount'
    },
    const {
      '1': 'create_post_reaction',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.subsocial.CreatePostReaction',
      '9': 0,
      '10': 'createPostReaction'
    },
    const {
      '1': 'create_post',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.subsocial.CreatePost',
      '9': 0,
      '10': 'createPost'
    },
    const {
      '1': 'update_post',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.subsocial.UpdatePost',
      '9': 0,
      '10': 'updatePost'
    },
    const {
      '1': 'follow_space',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.subsocial.FollowSpace',
      '9': 0,
      '10': 'followSpace'
    },
    const {
      '1': 'is_account_follower',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.subsocial.IsAccountFollower',
      '9': 0,
      '10': 'isAccountFollower'
    },
    const {
      '1': 'is_space_follower',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.subsocial.IsSpaceFollower',
      '9': 0,
      '10': 'isSpaceFollower'
    },
    const {
      '1': 'is_post_shared_by_account',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.subsocial.IsPostSharedByAccount',
      '9': 0,
      '10': 'isPostSharedByAccount'
    },
    const {
      '1': 'unfollow_space',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.subsocial.UnfollowSpace',
      '9': 0,
      '10': 'unfollowSpace'
    },
    const {
      '1': 'update_post_reaction',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.subsocial.UpdatePostReaction',
      '9': 0,
      '10': 'updatePostReaction'
    },
    const {
      '1': 'delete_post_reaction',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.subsocial.DeletePostReaction',
      '9': 0,
      '10': 'deletePostReaction'
    },
    const {
      '1': 'create_profile',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.subsocial.CreateProfile',
      '9': 0,
      '10': 'createProfile'
    },
    const {
      '1': 'update_profile',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.subsocial.UpdateProfile',
      '9': 0,
      '10': 'updateProfile'
    },
    const {
      '1': 'current_account_id',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetCurrentAccountId',
      '9': 0,
      '10': 'currentAccountId'
    },
    const {
      '1': 'create_space',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.subsocial.CreateSpace',
      '9': 0,
      '10': 'createSpace'
    },
    const {
      '1': 'update_space',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.subsocial.UpdateSpace',
      '9': 0,
      '10': 'updateSpace'
    },
    const {
      '1': 'follow_account',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.subsocial.FollowAccount',
      '9': 0,
      '10': 'followAccount'
    },
    const {
      '1': 'unfollow_account',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.subsocial.UnfollowAccount',
      '9': 0,
      '10': 'unfollowAccount'
    },
    const {
      '1': 'post_reaction_id_by_account',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetPostReactionIdByAccount',
      '9': 0,
      '10': 'postReactionIdByAccount'
    },
    const {
      '1': 'query_account_data',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.subsocial.QueryAccountData',
      '9': 0,
      '10': 'queryAccountData'
    },
    const {
      '1': 'system_properties',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GetSystemProperties',
      '9': 0,
      '10': 'systemProperties'
    },
  ],
  '8': const [
    const {'1': 'body'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode(
    'CgdSZXF1ZXN0EjkKC3NwYWNlX2J5X2lkGAEgASgLMhcuc3Vic29jaWFsLkdldFNwYWNlQnlJZEgAUglzcGFjZUJ5SWQSRQoPc3BhY2VfYnlfaGFuZGxlGAIgASgLMhsuc3Vic29jaWFsLkdldFNwYWNlQnlIYW5kbGVIAFINc3BhY2VCeUhhbmRsZRI2Cgpwb3N0X2J5X2lkGAMgASgLMhYuc3Vic29jaWFsLkdldFBvc3RCeUlkSABSCHBvc3RCeUlkElAKFHBvc3RfaWRzX2J5X3NwYWNlX2lkGAQgASgLMh4uc3Vic29jaWFsLkdldFBvc3RJZHNCeVNwYWNlSWRIAFIQcG9zdElkc0J5U3BhY2VJZBJCCg5yZWFjdGlvbl9ieV9pZBgFIAEoCzIaLnN1YnNvY2lhbC5HZXRSZWFjdGlvbkJ5SWRIAFIMcmVhY3Rpb25CeUlkElkKF3JlYWN0aW9uX2lkc19ieV9wb3N0X2lkGAYgASgLMiEuc3Vic29jaWFsLkdldFJlYWN0aW9uSWRzQnlQb3N0SWRIAFITcmVhY3Rpb25JZHNCeVBvc3RJZBJQChRyZXBseV9pZHNfYnlfcG9zdF9pZBgHIAEoCzIeLnN1YnNvY2lhbC5HZXRSZXBseUlkc0J5UG9zdElkSABSEHJlcGx5SWRzQnlQb3N0SWQSaAocc29jaWFsX2FjY291bnRfYnlfYWNjb3VudF9pZBgIIAEoCzImLnN1YnNvY2lhbC5HZXRTb2NpYWxBY2NvdW50QnlBY2NvdW50SWRIAFIYc29jaWFsQWNjb3VudEJ5QWNjb3VudElkEj8KDW5leHRfc3BhY2VfaWQYCSABKAsyGS5zdWJzb2NpYWwuR2V0TmV4dFNwYWNlSWRIAFILbmV4dFNwYWNlSWQSPAoMbmV4dF9wb3N0X2lkGAogASgLMhguc3Vic29jaWFsLkdldE5leHRQb3N0SWRIAFIKbmV4dFBvc3RJZBJMChJzcGFjZV9pZHNfYnlfb3duZXIYCyABKAsyHS5zdWJzb2NpYWwuR2V0U3BhY2VJZHNCeU93bmVySABSD3NwYWNlSWRzQnlPd25lchJHCg9zcGFjZV9mb2xsb3dlcnMYDCABKAsyHC5zdWJzb2NpYWwuR2V0U3BhY2VGb2xsb3dlcnNIAFIOc3BhY2VGb2xsb3dlcnMSZAoac3BhY2VzX2ZvbGxvd2VkX2J5X2FjY291bnQYDSABKAsyJS5zdWJzb2NpYWwuR2V0U3BhY2VzRm9sbG93ZWRCeUFjY291bnRIAFIXc3BhY2VzRm9sbG93ZWRCeUFjY291bnQSTQoRYWNjb3VudF9mb2xsb3dlcnMYDiABKAsyHi5zdWJzb2NpYWwuR2V0QWNjb3VudEZvbGxvd2Vyc0gAUhBhY2NvdW50Rm9sbG93ZXJzEmoKHGFjY291bnRzX2ZvbGxvd2VkX2J5X2FjY291bnQYDyABKAsyJy5zdWJzb2NpYWwuR2V0QWNjb3VudHNGb2xsb3dlZEJ5QWNjb3VudEgAUhlhY2NvdW50c0ZvbGxvd2VkQnlBY2NvdW50EkcKEGdlbmVyYXRlX2FjY291bnQYECABKAsyGi5zdWJzb2NpYWwuR2VuZXJhdGVBY2NvdW50SABSD2dlbmVyYXRlQWNjb3VudBJBCg5pbXBvcnRfYWNjb3VudBgRIAEoCzIYLnN1YnNvY2lhbC5JbXBvcnRBY2NvdW50SABSDWltcG9ydEFjY291bnQSUQoUY3JlYXRlX3Bvc3RfcmVhY3Rpb24YEiABKAsyHS5zdWJzb2NpYWwuQ3JlYXRlUG9zdFJlYWN0aW9uSABSEmNyZWF0ZVBvc3RSZWFjdGlvbhI4CgtjcmVhdGVfcG9zdBgTIAEoCzIVLnN1YnNvY2lhbC5DcmVhdGVQb3N0SABSCmNyZWF0ZVBvc3QSOAoLdXBkYXRlX3Bvc3QYFCABKAsyFS5zdWJzb2NpYWwuVXBkYXRlUG9zdEgAUgp1cGRhdGVQb3N0EjsKDGZvbGxvd19zcGFjZRgVIAEoCzIWLnN1YnNvY2lhbC5Gb2xsb3dTcGFjZUgAUgtmb2xsb3dTcGFjZRJOChNpc19hY2NvdW50X2ZvbGxvd2VyGBYgASgLMhwuc3Vic29jaWFsLklzQWNjb3VudEZvbGxvd2VySABSEWlzQWNjb3VudEZvbGxvd2VyEkgKEWlzX3NwYWNlX2ZvbGxvd2VyGBcgASgLMhouc3Vic29jaWFsLklzU3BhY2VGb2xsb3dlckgAUg9pc1NwYWNlRm9sbG93ZXISXAoZaXNfcG9zdF9zaGFyZWRfYnlfYWNjb3VudBgYIAEoCzIgLnN1YnNvY2lhbC5Jc1Bvc3RTaGFyZWRCeUFjY291bnRIAFIVaXNQb3N0U2hhcmVkQnlBY2NvdW50EkEKDnVuZm9sbG93X3NwYWNlGBkgASgLMhguc3Vic29jaWFsLlVuZm9sbG93U3BhY2VIAFINdW5mb2xsb3dTcGFjZRJRChR1cGRhdGVfcG9zdF9yZWFjdGlvbhgaIAEoCzIdLnN1YnNvY2lhbC5VcGRhdGVQb3N0UmVhY3Rpb25IAFISdXBkYXRlUG9zdFJlYWN0aW9uElEKFGRlbGV0ZV9wb3N0X3JlYWN0aW9uGBsgASgLMh0uc3Vic29jaWFsLkRlbGV0ZVBvc3RSZWFjdGlvbkgAUhJkZWxldGVQb3N0UmVhY3Rpb24SQQoOY3JlYXRlX3Byb2ZpbGUYHCABKAsyGC5zdWJzb2NpYWwuQ3JlYXRlUHJvZmlsZUgAUg1jcmVhdGVQcm9maWxlEkEKDnVwZGF0ZV9wcm9maWxlGB0gASgLMhguc3Vic29jaWFsLlVwZGF0ZVByb2ZpbGVIAFINdXBkYXRlUHJvZmlsZRJOChJjdXJyZW50X2FjY291bnRfaWQYHiABKAsyHi5zdWJzb2NpYWwuR2V0Q3VycmVudEFjY291bnRJZEgAUhBjdXJyZW50QWNjb3VudElkEjsKDGNyZWF0ZV9zcGFjZRgfIAEoCzIWLnN1YnNvY2lhbC5DcmVhdGVTcGFjZUgAUgtjcmVhdGVTcGFjZRI7Cgx1cGRhdGVfc3BhY2UYICABKAsyFi5zdWJzb2NpYWwuVXBkYXRlU3BhY2VIAFILdXBkYXRlU3BhY2USQQoOZm9sbG93X2FjY291bnQYISABKAsyGC5zdWJzb2NpYWwuRm9sbG93QWNjb3VudEgAUg1mb2xsb3dBY2NvdW50EkcKEHVuZm9sbG93X2FjY291bnQYIiABKAsyGi5zdWJzb2NpYWwuVW5mb2xsb3dBY2NvdW50SABSD3VuZm9sbG93QWNjb3VudBJlChtwb3N0X3JlYWN0aW9uX2lkX2J5X2FjY291bnQYIyABKAsyJS5zdWJzb2NpYWwuR2V0UG9zdFJlYWN0aW9uSWRCeUFjY291bnRIAFIXcG9zdFJlYWN0aW9uSWRCeUFjY291bnQSSwoScXVlcnlfYWNjb3VudF9kYXRhGCQgASgLMhsuc3Vic29jaWFsLlF1ZXJ5QWNjb3VudERhdGFIAFIQcXVlcnlBY2NvdW50RGF0YRJNChFzeXN0ZW1fcHJvcGVydGllcxglIAEoCzIeLnN1YnNvY2lhbC5HZXRTeXN0ZW1Qcm9wZXJ0aWVzSABSEHN5c3RlbVByb3BlcnRpZXNCBgoEYm9keQ==');
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
      '6': '.subsocial.SpaceByHandle',
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
    const {
      '1': 'reply_ids_by_post_id',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.subsocial.ReplyIdsByPostId',
      '9': 0,
      '10': 'replyIdsByPostId'
    },
    const {
      '1': 'social_account_by_account_id',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SocialAccountByAccountId',
      '9': 0,
      '10': 'socialAccountByAccountId'
    },
    const {
      '1': 'next_space_id',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.subsocial.NextSpaceId',
      '9': 0,
      '10': 'nextSpaceId'
    },
    const {
      '1': 'next_post_id',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.subsocial.NextPostId',
      '9': 0,
      '10': 'nextPostId'
    },
    const {
      '1': 'space_ids_by_owner',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceIdsByOwner',
      '9': 0,
      '10': 'spaceIdsByOwner'
    },
    const {
      '1': 'space_followers',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceFollowers',
      '9': 0,
      '10': 'spaceFollowers'
    },
    const {
      '1': 'spaces_followed_by_account',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpacesFollowedByAccount',
      '9': 0,
      '10': 'spacesFollowedByAccount'
    },
    const {
      '1': 'account_followers',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.subsocial.AccountFollowers',
      '9': 0,
      '10': 'accountFollowers'
    },
    const {
      '1': 'accounts_followed_by_account',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.subsocial.AccountsFollowedByAccount',
      '9': 0,
      '10': 'accountsFollowedByAccount'
    },
    const {
      '1': 'generated_account',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.subsocial.GeneratedAccount',
      '9': 0,
      '10': 'generatedAccount'
    },
    const {
      '1': 'imported_account',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.subsocial.ImportedAccount',
      '9': 0,
      '10': 'importedAccount'
    },
    const {
      '1': 'post_reaction_created',
      '3': 19,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostReactionCreated',
      '9': 0,
      '10': 'postReactionCreated'
    },
    const {
      '1': 'post_created',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostCreated',
      '9': 0,
      '10': 'postCreated'
    },
    const {
      '1': 'post_updated',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostUpdated',
      '9': 0,
      '10': 'postUpdated'
    },
    const {
      '1': 'space_followed',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceFollowed',
      '9': 0,
      '10': 'spaceFollowed'
    },
    const {
      '1': 'is_account_follower',
      '3': 23,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'isAccountFollower'
    },
    const {
      '1': 'is_space_follower',
      '3': 24,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'isSpaceFollower'
    },
    const {
      '1': 'is_post_shared_by_account',
      '3': 25,
      '4': 1,
      '5': 8,
      '9': 0,
      '10': 'isPostSharedByAccount'
    },
    const {
      '1': 'space_unfollowed',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceUnfollowed',
      '9': 0,
      '10': 'spaceUnfollowed'
    },
    const {
      '1': 'post_reaction_updated',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostReactionUpdated',
      '9': 0,
      '10': 'postReactionUpdated'
    },
    const {
      '1': 'post_reaction_deleted',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostReactionDeleted',
      '9': 0,
      '10': 'postReactionDeleted'
    },
    const {
      '1': 'profile_created',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.subsocial.ProfileCreated',
      '9': 0,
      '10': 'profileCreated'
    },
    const {
      '1': 'profile_updated',
      '3': 30,
      '4': 1,
      '5': 11,
      '6': '.subsocial.ProfileUpdated',
      '9': 0,
      '10': 'profileUpdated'
    },
    const {
      '1': 'current_account_id',
      '3': 31,
      '4': 1,
      '5': 11,
      '6': '.subsocial.CurrentAccountId',
      '9': 0,
      '10': 'currentAccountId'
    },
    const {
      '1': 'space_created',
      '3': 32,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceCreated',
      '9': 0,
      '10': 'spaceCreated'
    },
    const {
      '1': 'space_updated',
      '3': 33,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceUpdated',
      '9': 0,
      '10': 'spaceUpdated'
    },
    const {
      '1': 'account_followed',
      '3': 34,
      '4': 1,
      '5': 11,
      '6': '.subsocial.AccountFollowed',
      '9': 0,
      '10': 'accountFollowed'
    },
    const {
      '1': 'account_unfollowed',
      '3': 35,
      '4': 1,
      '5': 11,
      '6': '.subsocial.AccountUnfollowed',
      '9': 0,
      '10': 'accountUnfollowed'
    },
    const {
      '1': 'post_reaction_id_by_account',
      '3': 36,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostReactionIdByAccount',
      '9': 0,
      '10': 'postReactionIdByAccount'
    },
    const {
      '1': 'account_data',
      '3': 37,
      '4': 1,
      '5': 11,
      '6': '.subsocial.AccountData',
      '9': 0,
      '10': 'accountData'
    },
    const {
      '1': 'system_properties',
      '3': 38,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SystemProperties',
      '9': 0,
      '10': 'systemProperties'
    },
  ],
  '8': const [
    const {'1': 'body'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode(
    'CghSZXNwb25zZRIoCgVlcnJvchgBIAEoCzIQLnN1YnNvY2lhbC5FcnJvckgAUgVlcnJvchI2CgtzcGFjZV9ieV9pZBgCIAEoCzIULnN1YnNvY2lhbC5TcGFjZUJ5SWRIAFIJc3BhY2VCeUlkEkIKD3NwYWNlX2J5X2hhbmRsZRgDIAEoCzIYLnN1YnNvY2lhbC5TcGFjZUJ5SGFuZGxlSABSDXNwYWNlQnlIYW5kbGUSMwoKcG9zdF9ieV9pZBgEIAEoCzITLnN1YnNvY2lhbC5Qb3N0QnlJZEgAUghwb3N0QnlJZBJNChRwb3N0X2lkc19ieV9zcGFjZV9pZBgFIAEoCzIbLnN1YnNvY2lhbC5Qb3N0SWRzQnlTcGFjZUlkSABSEHBvc3RJZHNCeVNwYWNlSWQSPwoOcmVhY3Rpb25fYnlfaWQYBiABKAsyFy5zdWJzb2NpYWwuUmVhY3Rpb25CeUlkSABSDHJlYWN0aW9uQnlJZBJWChdyZWFjdGlvbl9pZHNfYnlfcG9zdF9pZBgHIAEoCzIeLnN1YnNvY2lhbC5SZWFjdGlvbklkc0J5UG9zdElkSABSE3JlYWN0aW9uSWRzQnlQb3N0SWQSTQoUcmVwbHlfaWRzX2J5X3Bvc3RfaWQYCCABKAsyGy5zdWJzb2NpYWwuUmVwbHlJZHNCeVBvc3RJZEgAUhByZXBseUlkc0J5UG9zdElkEmUKHHNvY2lhbF9hY2NvdW50X2J5X2FjY291bnRfaWQYCSABKAsyIy5zdWJzb2NpYWwuU29jaWFsQWNjb3VudEJ5QWNjb3VudElkSABSGHNvY2lhbEFjY291bnRCeUFjY291bnRJZBI8Cg1uZXh0X3NwYWNlX2lkGAogASgLMhYuc3Vic29jaWFsLk5leHRTcGFjZUlkSABSC25leHRTcGFjZUlkEjkKDG5leHRfcG9zdF9pZBgLIAEoCzIVLnN1YnNvY2lhbC5OZXh0UG9zdElkSABSCm5leHRQb3N0SWQSSQoSc3BhY2VfaWRzX2J5X293bmVyGAwgASgLMhouc3Vic29jaWFsLlNwYWNlSWRzQnlPd25lckgAUg9zcGFjZUlkc0J5T3duZXISRAoPc3BhY2VfZm9sbG93ZXJzGA0gASgLMhkuc3Vic29jaWFsLlNwYWNlRm9sbG93ZXJzSABSDnNwYWNlRm9sbG93ZXJzEmEKGnNwYWNlc19mb2xsb3dlZF9ieV9hY2NvdW50GA4gASgLMiIuc3Vic29jaWFsLlNwYWNlc0ZvbGxvd2VkQnlBY2NvdW50SABSF3NwYWNlc0ZvbGxvd2VkQnlBY2NvdW50EkoKEWFjY291bnRfZm9sbG93ZXJzGA8gASgLMhsuc3Vic29jaWFsLkFjY291bnRGb2xsb3dlcnNIAFIQYWNjb3VudEZvbGxvd2VycxJnChxhY2NvdW50c19mb2xsb3dlZF9ieV9hY2NvdW50GBAgASgLMiQuc3Vic29jaWFsLkFjY291bnRzRm9sbG93ZWRCeUFjY291bnRIAFIZYWNjb3VudHNGb2xsb3dlZEJ5QWNjb3VudBJKChFnZW5lcmF0ZWRfYWNjb3VudBgRIAEoCzIbLnN1YnNvY2lhbC5HZW5lcmF0ZWRBY2NvdW50SABSEGdlbmVyYXRlZEFjY291bnQSRwoQaW1wb3J0ZWRfYWNjb3VudBgSIAEoCzIaLnN1YnNvY2lhbC5JbXBvcnRlZEFjY291bnRIAFIPaW1wb3J0ZWRBY2NvdW50ElQKFXBvc3RfcmVhY3Rpb25fY3JlYXRlZBgTIAEoCzIeLnN1YnNvY2lhbC5Qb3N0UmVhY3Rpb25DcmVhdGVkSABSE3Bvc3RSZWFjdGlvbkNyZWF0ZWQSOwoMcG9zdF9jcmVhdGVkGBQgASgLMhYuc3Vic29jaWFsLlBvc3RDcmVhdGVkSABSC3Bvc3RDcmVhdGVkEjsKDHBvc3RfdXBkYXRlZBgVIAEoCzIWLnN1YnNvY2lhbC5Qb3N0VXBkYXRlZEgAUgtwb3N0VXBkYXRlZBJBCg5zcGFjZV9mb2xsb3dlZBgWIAEoCzIYLnN1YnNvY2lhbC5TcGFjZUZvbGxvd2VkSABSDXNwYWNlRm9sbG93ZWQSMAoTaXNfYWNjb3VudF9mb2xsb3dlchgXIAEoCEgAUhFpc0FjY291bnRGb2xsb3dlchIsChFpc19zcGFjZV9mb2xsb3dlchgYIAEoCEgAUg9pc1NwYWNlRm9sbG93ZXISOgoZaXNfcG9zdF9zaGFyZWRfYnlfYWNjb3VudBgZIAEoCEgAUhVpc1Bvc3RTaGFyZWRCeUFjY291bnQSRwoQc3BhY2VfdW5mb2xsb3dlZBgaIAEoCzIaLnN1YnNvY2lhbC5TcGFjZVVuZm9sbG93ZWRIAFIPc3BhY2VVbmZvbGxvd2VkElQKFXBvc3RfcmVhY3Rpb25fdXBkYXRlZBgbIAEoCzIeLnN1YnNvY2lhbC5Qb3N0UmVhY3Rpb25VcGRhdGVkSABSE3Bvc3RSZWFjdGlvblVwZGF0ZWQSVAoVcG9zdF9yZWFjdGlvbl9kZWxldGVkGBwgASgLMh4uc3Vic29jaWFsLlBvc3RSZWFjdGlvbkRlbGV0ZWRIAFITcG9zdFJlYWN0aW9uRGVsZXRlZBJECg9wcm9maWxlX2NyZWF0ZWQYHSABKAsyGS5zdWJzb2NpYWwuUHJvZmlsZUNyZWF0ZWRIAFIOcHJvZmlsZUNyZWF0ZWQSRAoPcHJvZmlsZV91cGRhdGVkGB4gASgLMhkuc3Vic29jaWFsLlByb2ZpbGVVcGRhdGVkSABSDnByb2ZpbGVVcGRhdGVkEksKEmN1cnJlbnRfYWNjb3VudF9pZBgfIAEoCzIbLnN1YnNvY2lhbC5DdXJyZW50QWNjb3VudElkSABSEGN1cnJlbnRBY2NvdW50SWQSPgoNc3BhY2VfY3JlYXRlZBggIAEoCzIXLnN1YnNvY2lhbC5TcGFjZUNyZWF0ZWRIAFIMc3BhY2VDcmVhdGVkEj4KDXNwYWNlX3VwZGF0ZWQYISABKAsyFy5zdWJzb2NpYWwuU3BhY2VVcGRhdGVkSABSDHNwYWNlVXBkYXRlZBJHChBhY2NvdW50X2ZvbGxvd2VkGCIgASgLMhouc3Vic29jaWFsLkFjY291bnRGb2xsb3dlZEgAUg9hY2NvdW50Rm9sbG93ZWQSTQoSYWNjb3VudF91bmZvbGxvd2VkGCMgASgLMhwuc3Vic29jaWFsLkFjY291bnRVbmZvbGxvd2VkSABSEWFjY291bnRVbmZvbGxvd2VkEmIKG3Bvc3RfcmVhY3Rpb25faWRfYnlfYWNjb3VudBgkIAEoCzIiLnN1YnNvY2lhbC5Qb3N0UmVhY3Rpb25JZEJ5QWNjb3VudEgAUhdwb3N0UmVhY3Rpb25JZEJ5QWNjb3VudBI7CgxhY2NvdW50X2RhdGEYJSABKAsyFi5zdWJzb2NpYWwuQWNjb3VudERhdGFIAFILYWNjb3VudERhdGESSgoRc3lzdGVtX3Byb3BlcnRpZXMYJiABKAsyGy5zdWJzb2NpYWwuU3lzdGVtUHJvcGVydGllc0gAUhBzeXN0ZW1Qcm9wZXJ0aWVzQgYKBGJvZHk=');
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
    const {'1': 'KIND_NOT_FOUND', '2': 4},
    const {'1': 'KIND_SUBXT', '2': 5},
  ],
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchIpCgRraW5kGAEgASgOMhUuc3Vic29jaWFsLkVycm9yLktpbmRSBGtpbmQSEAoDbXNnGAIgASgJUgNtc2cigAEKBEtpbmQSEAoMS0lORF9VTktOT1dOEAASEAoMS0lORF9ORVRXT1JLEAESFgoSS0lORF9JTlZBTElEX1BST1RPEAISGAoUS0lORF9JTlZBTElEX1JFUVVFU1QQAxISCg5LSU5EX05PVF9GT1VORBAEEg4KCktJTkRfU1VCWFQQBQ==');
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
@$core.Deprecated('Use getReplyIdsByPostIdDescriptor instead')
const GetReplyIdsByPostId$json = const {
  '1': 'GetReplyIdsByPostId',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
  ],
};

/// Descriptor for `GetReplyIdsByPostId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getReplyIdsByPostIdDescriptor =
    $convert.base64Decode(
        'ChNHZXRSZXBseUlkc0J5UG9zdElkEhcKB3Bvc3RfaWQYASABKARSBnBvc3RJZA==');
@$core.Deprecated('Use getSocialAccountByAccountIdDescriptor instead')
const GetSocialAccountByAccountId$json = const {
  '1': 'GetSocialAccountByAccountId',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `GetSocialAccountByAccountId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSocialAccountByAccountIdDescriptor =
    $convert.base64Decode(
        'ChtHZXRTb2NpYWxBY2NvdW50QnlBY2NvdW50SWQSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElk');
@$core.Deprecated('Use getNextSpaceIdDescriptor instead')
const GetNextSpaceId$json = const {
  '1': 'GetNextSpaceId',
};

/// Descriptor for `GetNextSpaceId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNextSpaceIdDescriptor =
    $convert.base64Decode('Cg5HZXROZXh0U3BhY2VJZA==');
@$core.Deprecated('Use getNextPostIdDescriptor instead')
const GetNextPostId$json = const {
  '1': 'GetNextPostId',
};

/// Descriptor for `GetNextPostId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNextPostIdDescriptor =
    $convert.base64Decode('Cg1HZXROZXh0UG9zdElk');
@$core.Deprecated('Use getCurrentAccountIdDescriptor instead')
const GetCurrentAccountId$json = const {
  '1': 'GetCurrentAccountId',
};

/// Descriptor for `GetCurrentAccountId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentAccountIdDescriptor =
    $convert.base64Decode('ChNHZXRDdXJyZW50QWNjb3VudElk');
@$core.Deprecated('Use getSystemPropertiesDescriptor instead')
const GetSystemProperties$json = const {
  '1': 'GetSystemProperties',
};

/// Descriptor for `GetSystemProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSystemPropertiesDescriptor =
    $convert.base64Decode('ChNHZXRTeXN0ZW1Qcm9wZXJ0aWVz');
@$core.Deprecated('Use getSpaceIdsByOwnerDescriptor instead')
const GetSpaceIdsByOwner$json = const {
  '1': 'GetSpaceIdsByOwner',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `GetSpaceIdsByOwner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpaceIdsByOwnerDescriptor =
    $convert.base64Decode(
        'ChJHZXRTcGFjZUlkc0J5T3duZXISHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElk');
@$core.Deprecated('Use getSpaceFollowersDescriptor instead')
const GetSpaceFollowers$json = const {
  '1': 'GetSpaceFollowers',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `GetSpaceFollowers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpaceFollowersDescriptor = $convert.base64Decode(
    'ChFHZXRTcGFjZUZvbGxvd2VycxIZCghzcGFjZV9pZBgBIAEoBFIHc3BhY2VJZA==');
@$core.Deprecated('Use getSpacesFollowedByAccountDescriptor instead')
const GetSpacesFollowedByAccount$json = const {
  '1': 'GetSpacesFollowedByAccount',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `GetSpacesFollowedByAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSpacesFollowedByAccountDescriptor =
    $convert.base64Decode(
        'ChpHZXRTcGFjZXNGb2xsb3dlZEJ5QWNjb3VudBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQ=');
@$core.Deprecated('Use getAccountFollowersDescriptor instead')
const GetAccountFollowers$json = const {
  '1': 'GetAccountFollowers',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `GetAccountFollowers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountFollowersDescriptor = $convert.base64Decode(
    'ChNHZXRBY2NvdW50Rm9sbG93ZXJzEh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZA==');
@$core.Deprecated('Use getAccountsFollowedByAccountDescriptor instead')
const GetAccountsFollowedByAccount$json = const {
  '1': 'GetAccountsFollowedByAccount',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `GetAccountsFollowedByAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountsFollowedByAccountDescriptor =
    $convert.base64Decode(
        'ChxHZXRBY2NvdW50c0ZvbGxvd2VkQnlBY2NvdW50Eh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZA==');
@$core.Deprecated('Use getPostReactionIdByAccountDescriptor instead')
const GetPostReactionIdByAccount$json = const {
  '1': 'GetPostReactionIdByAccount',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'post_id', '3': 2, '4': 1, '5': 4, '10': 'postId'},
  ],
};

/// Descriptor for `GetPostReactionIdByAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPostReactionIdByAccountDescriptor =
    $convert.base64Decode(
        'ChpHZXRQb3N0UmVhY3Rpb25JZEJ5QWNjb3VudBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQSFwoHcG9zdF9pZBgCIAEoBFIGcG9zdElk');
@$core.Deprecated('Use queryAccountDataDescriptor instead')
const QueryAccountData$json = const {
  '1': 'QueryAccountData',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `QueryAccountData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAccountDataDescriptor = $convert.base64Decode(
    'ChBRdWVyeUFjY291bnREYXRhEh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZA==');
@$core.Deprecated('Use generateAccountDescriptor instead')
const GenerateAccount$json = const {
  '1': 'GenerateAccount',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `GenerateAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generateAccountDescriptor = $convert.base64Decode(
    'Cg9HZW5lcmF0ZUFjY291bnQSGgoIcGFzc3dvcmQYASABKAlSCHBhc3N3b3Jk');
@$core.Deprecated('Use importAccountDescriptor instead')
const ImportAccount$json = const {
  '1': 'ImportAccount',
  '2': const [
    const {'1': 'password', '3': 1, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'suri', '3': 2, '4': 1, '5': 9, '10': 'suri'},
  ],
};

/// Descriptor for `ImportAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importAccountDescriptor = $convert.base64Decode(
    'Cg1JbXBvcnRBY2NvdW50EhoKCHBhc3N3b3JkGAEgASgJUghwYXNzd29yZBISCgRzdXJpGAIgASgJUgRzdXJp');
@$core.Deprecated('Use createPostReactionDescriptor instead')
const CreatePostReaction$json = const {
  '1': 'CreatePostReaction',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
    const {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.subsocial.Reaction.Kind',
      '10': 'kind'
    },
  ],
};

/// Descriptor for `CreatePostReaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPostReactionDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVQb3N0UmVhY3Rpb24SFwoHcG9zdF9pZBgBIAEoBFIGcG9zdElkEiwKBGtpbmQYAiABKA4yGC5zdWJzb2NpYWwuUmVhY3Rpb24uS2luZFIEa2luZA==');
@$core.Deprecated('Use createPostDescriptor instead')
const CreatePost$json = const {
  '1': 'CreatePost',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 4, '10': 'spaceId'},
    const {
      '1': 'extension_value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostExtension',
      '10': 'extensionValue'
    },
    const {
      '1': 'content',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'content'
    },
  ],
};

/// Descriptor for `CreatePost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPostDescriptor = $convert.base64Decode(
    'CgpDcmVhdGVQb3N0EhkKCHNwYWNlX2lkGAEgASgEUgdzcGFjZUlkEkEKD2V4dGVuc2lvbl92YWx1ZRgCIAEoCzIYLnN1YnNvY2lhbC5Qb3N0RXh0ZW5zaW9uUg5leHRlbnNpb25WYWx1ZRIsCgdjb250ZW50GAMgASgLMhIuc3Vic29jaWFsLkNvbnRlbnRSB2NvbnRlbnQ=');
@$core.Deprecated('Use updatePostDescriptor instead')
const UpdatePost$json = const {
  '1': 'UpdatePost',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
    const {
      '1': 'post_update',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostUpdate',
      '10': 'postUpdate'
    },
  ],
};

/// Descriptor for `UpdatePost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePostDescriptor = $convert.base64Decode(
    'CgpVcGRhdGVQb3N0EhcKB3Bvc3RfaWQYASABKARSBnBvc3RJZBI2Cgtwb3N0X3VwZGF0ZRgCIAEoCzIVLnN1YnNvY2lhbC5Qb3N0VXBkYXRlUgpwb3N0VXBkYXRl');
@$core.Deprecated('Use followSpaceDescriptor instead')
const FollowSpace$json = const {
  '1': 'FollowSpace',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `FollowSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followSpaceDescriptor = $convert
    .base64Decode('CgtGb2xsb3dTcGFjZRIZCghzcGFjZV9pZBgBIAEoBFIHc3BhY2VJZA==');
@$core.Deprecated('Use unfollowSpaceDescriptor instead')
const UnfollowSpace$json = const {
  '1': 'UnfollowSpace',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `UnfollowSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unfollowSpaceDescriptor = $convert
    .base64Decode('Cg1VbmZvbGxvd1NwYWNlEhkKCHNwYWNlX2lkGAEgASgEUgdzcGFjZUlk');
@$core.Deprecated('Use isAccountFollowerDescriptor instead')
const IsAccountFollower$json = const {
  '1': 'IsAccountFollower',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `IsAccountFollower`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isAccountFollowerDescriptor = $convert.base64Decode(
    'ChFJc0FjY291bnRGb2xsb3dlchIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQ=');
@$core.Deprecated('Use isSpaceFollowerDescriptor instead')
const IsSpaceFollower$json = const {
  '1': 'IsSpaceFollower',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `IsSpaceFollower`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isSpaceFollowerDescriptor = $convert.base64Decode(
    'Cg9Jc1NwYWNlRm9sbG93ZXISGQoIc3BhY2VfaWQYASABKARSB3NwYWNlSWQ=');
@$core.Deprecated('Use isPostSharedByAccountDescriptor instead')
const IsPostSharedByAccount$json = const {
  '1': 'IsPostSharedByAccount',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
  ],
};

/// Descriptor for `IsPostSharedByAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isPostSharedByAccountDescriptor =
    $convert.base64Decode(
        'ChVJc1Bvc3RTaGFyZWRCeUFjY291bnQSFwoHcG9zdF9pZBgBIAEoBFIGcG9zdElk');
@$core.Deprecated('Use updatePostReactionDescriptor instead')
const UpdatePostReaction$json = const {
  '1': 'UpdatePostReaction',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
    const {'1': 'reaction_id', '3': 2, '4': 1, '5': 4, '10': 'reactionId'},
    const {
      '1': 'new_kind',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.subsocial.Reaction.Kind',
      '10': 'newKind'
    },
  ],
};

/// Descriptor for `UpdatePostReaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePostReactionDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVQb3N0UmVhY3Rpb24SFwoHcG9zdF9pZBgBIAEoBFIGcG9zdElkEh8KC3JlYWN0aW9uX2lkGAIgASgEUgpyZWFjdGlvbklkEjMKCG5ld19raW5kGAMgASgOMhguc3Vic29jaWFsLlJlYWN0aW9uLktpbmRSB25ld0tpbmQ=');
@$core.Deprecated('Use deletePostReactionDescriptor instead')
const DeletePostReaction$json = const {
  '1': 'DeletePostReaction',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
    const {'1': 'reaction_id', '3': 2, '4': 1, '5': 4, '10': 'reactionId'},
  ],
};

/// Descriptor for `DeletePostReaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePostReactionDescriptor = $convert.base64Decode(
    'ChJEZWxldGVQb3N0UmVhY3Rpb24SFwoHcG9zdF9pZBgBIAEoBFIGcG9zdElkEh8KC3JlYWN0aW9uX2lkGAIgASgEUgpyZWFjdGlvbklk');
@$core.Deprecated('Use createProfileDescriptor instead')
const CreateProfile$json = const {
  '1': 'CreateProfile',
  '2': const [
    const {
      '1': 'content',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'content'
    },
  ],
};

/// Descriptor for `CreateProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProfileDescriptor = $convert.base64Decode(
    'Cg1DcmVhdGVQcm9maWxlEiwKB2NvbnRlbnQYASABKAsyEi5zdWJzb2NpYWwuQ29udGVudFIHY29udGVudA==');
@$core.Deprecated('Use updateProfileDescriptor instead')
const UpdateProfile$json = const {
  '1': 'UpdateProfile',
  '2': const [
    const {
      '1': 'maybe_content',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'maybeContent'
    },
  ],
};

/// Descriptor for `UpdateProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVQcm9maWxlEjcKDW1heWJlX2NvbnRlbnQYASABKAsyEi5zdWJzb2NpYWwuQ29udGVudFIMbWF5YmVDb250ZW50');
@$core.Deprecated('Use createSpaceDescriptor instead')
const CreateSpace$json = const {
  '1': 'CreateSpace',
  '2': const [
    const {'1': 'parent_id', '3': 1, '4': 1, '5': 4, '10': 'parentId'},
    const {'1': 'handle', '3': 2, '4': 1, '5': 9, '10': 'handle'},
    const {
      '1': 'content',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'content'
    },
  ],
};

/// Descriptor for `CreateSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSpaceDescriptor = $convert.base64Decode(
    'CgtDcmVhdGVTcGFjZRIbCglwYXJlbnRfaWQYASABKARSCHBhcmVudElkEhYKBmhhbmRsZRgCIAEoCVIGaGFuZGxlEiwKB2NvbnRlbnQYAyABKAsyEi5zdWJzb2NpYWwuQ29udGVudFIHY29udGVudA==');
@$core.Deprecated('Use updateSpaceDescriptor instead')
const UpdateSpace$json = const {
  '1': 'UpdateSpace',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 4, '10': 'spaceId'},
    const {
      '1': 'update',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SpaceUpdate',
      '10': 'update'
    },
  ],
};

/// Descriptor for `UpdateSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSpaceDescriptor = $convert.base64Decode(
    'CgtVcGRhdGVTcGFjZRIZCghzcGFjZV9pZBgBIAEoBFIHc3BhY2VJZBIuCgZ1cGRhdGUYAiABKAsyFi5zdWJzb2NpYWwuU3BhY2VVcGRhdGVSBnVwZGF0ZQ==');
@$core.Deprecated('Use followAccountDescriptor instead')
const FollowAccount$json = const {
  '1': 'FollowAccount',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `FollowAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List followAccountDescriptor = $convert.base64Decode(
    'Cg1Gb2xsb3dBY2NvdW50Eh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZA==');
@$core.Deprecated('Use unfollowAccountDescriptor instead')
const UnfollowAccount$json = const {
  '1': 'UnfollowAccount',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `UnfollowAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unfollowAccountDescriptor = $convert.base64Decode(
    'Cg9VbmZvbGxvd0FjY291bnQSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElk');
@$core.Deprecated('Use whoAndWhenDescriptor instead')
const WhoAndWhen$json = const {
  '1': 'WhoAndWhen',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'block_number', '3': 2, '4': 1, '5': 4, '10': 'blockNumber'},
    const {'1': 'time', '3': 3, '4': 1, '5': 4, '10': 'time'},
  ],
};

/// Descriptor for `WhoAndWhen`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whoAndWhenDescriptor = $convert.base64Decode(
    'CgpXaG9BbmRXaGVuEhgKB2FjY291bnQYASABKAlSB2FjY291bnQSIQoMYmxvY2tfbnVtYmVyGAIgASgEUgtibG9ja051bWJlchISCgR0aW1lGAMgASgEUgR0aW1l');
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
@$core.Deprecated('Use regularPostDescriptor instead')
const RegularPost$json = const {
  '1': 'RegularPost',
};

/// Descriptor for `RegularPost`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regularPostDescriptor =
    $convert.base64Decode('CgtSZWd1bGFyUG9zdA==');
@$core.Deprecated('Use postExtensionDescriptor instead')
const PostExtension$json = const {
  '1': 'PostExtension',
  '2': const [
    const {
      '1': 'regular_post',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.RegularPost',
      '9': 0,
      '10': 'regularPost'
    },
    const {
      '1': 'comment',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Comment',
      '9': 0,
      '10': 'comment'
    },
    const {
      '1': 'shared_post',
      '3': 3,
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
    'Cg1Qb3N0RXh0ZW5zaW9uEjsKDHJlZ3VsYXJfcG9zdBgBIAEoCzIWLnN1YnNvY2lhbC5SZWd1bGFyUG9zdEgAUgtyZWd1bGFyUG9zdBIuCgdjb21tZW50GAIgASgLMhIuc3Vic29jaWFsLkNvbW1lbnRIAFIHY29tbWVudBI4CgtzaGFyZWRfcG9zdBgDIAEoCzIVLnN1YnNvY2lhbC5TaGFyZWRQb3N0SABSCnNoYXJlZFBvc3RCBwoFdmFsdWU=');
@$core.Deprecated('Use spaceDescriptor instead')
const Space$json = const {
  '1': 'Space',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {
      '1': 'created',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.WhoAndWhen',
      '10': 'created'
    },
    const {
      '1': 'updated',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.WhoAndWhen',
      '10': 'updated'
    },
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
    'CgVTcGFjZRIOCgJpZBgBIAEoBFICaWQSLwoHY3JlYXRlZBgCIAEoCzIVLnN1YnNvY2lhbC5XaG9BbmRXaGVuUgdjcmVhdGVkEi8KB3VwZGF0ZWQYAyABKAsyFS5zdWJzb2NpYWwuV2hvQW5kV2hlblIHdXBkYXRlZBIUCgVvd25lchgEIAEoCVIFb3duZXISGwoJcGFyZW50X2lkGAUgASgEUghwYXJlbnRJZBIWCgZoYW5kbGUYBiABKAlSBmhhbmRsZRIsCgdjb250ZW50GAcgASgLMhIuc3Vic29jaWFsLkNvbnRlbnRSB2NvbnRlbnQSFgoGaGlkZGVuGAggASgIUgZoaWRkZW4SHwoLcG9zdHNfY291bnQYCSABKA1SCnBvc3RzQ291bnQSLAoSaGlkZGVuX3Bvc3RzX2NvdW50GAogASgNUhBoaWRkZW5Qb3N0c0NvdW50EicKD2ZvbGxvd2Vyc19jb3VudBgLIAEoDVIOZm9sbG93ZXJzQ291bnQSFAoFc2NvcmUYDCABKAVSBXNjb3Jl');
@$core.Deprecated('Use postDescriptor instead')
const Post$json = const {
  '1': 'Post',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {
      '1': 'created',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.WhoAndWhen',
      '10': 'created'
    },
    const {
      '1': 'updated',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.WhoAndWhen',
      '10': 'updated'
    },
    const {'1': 'owner', '3': 4, '4': 1, '5': 9, '10': 'owner'},
    const {
      '1': 'extension_value',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.subsocial.PostExtension',
      '10': 'extensionValue'
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
    'CgRQb3N0Eg4KAmlkGAEgASgEUgJpZBIvCgdjcmVhdGVkGAIgASgLMhUuc3Vic29jaWFsLldob0FuZFdoZW5SB2NyZWF0ZWQSLwoHdXBkYXRlZBgDIAEoCzIVLnN1YnNvY2lhbC5XaG9BbmRXaGVuUgd1cGRhdGVkEhQKBW93bmVyGAQgASgJUgVvd25lchJBCg9leHRlbnNpb25fdmFsdWUYBSABKAsyGC5zdWJzb2NpYWwuUG9zdEV4dGVuc2lvblIOZXh0ZW5zaW9uVmFsdWUSGQoIc3BhY2VfaWQYBiABKARSB3NwYWNlSWQSLAoHY29udGVudBgHIAEoCzISLnN1YnNvY2lhbC5Db250ZW50Ugdjb250ZW50EhYKBmhpZGRlbhgIIAEoCFIGaGlkZGVuEiMKDXJlcGxpZXNfY291bnQYCSABKA1SDHJlcGxpZXNDb3VudBIwChRoaWRkZW5fcmVwbGllc19jb3VudBgKIAEoDVISaGlkZGVuUmVwbGllc0NvdW50EiEKDHNoYXJlc19jb3VudBgLIAEoDVILc2hhcmVzQ291bnQSIwoNdXB2b3Rlc19jb3VudBgMIAEoDVIMdXB2b3Rlc0NvdW50EicKD2Rvd252b3Rlc19jb3VudBgNIAEoDVIOZG93bnZvdGVzQ291bnQSFAoFc2NvcmUYDiABKAVSBXNjb3Jl');
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
    const {
      '1': 'created',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.WhoAndWhen',
      '10': 'created'
    },
    const {
      '1': 'updated',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.WhoAndWhen',
      '10': 'updated'
    },
    const {
      '1': 'kind',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.subsocial.Reaction.Kind',
      '10': 'kind'
    },
  ],
  '4': const [Reaction_Kind$json],
};

@$core.Deprecated('Use reactionDescriptor instead')
const Reaction_Kind$json = const {
  '1': 'Kind',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'UP_VOTE', '2': 1},
    const {'1': 'DOWN_VOTE', '2': 2},
  ],
};

/// Descriptor for `Reaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionDescriptor = $convert.base64Decode(
    'CghSZWFjdGlvbhIOCgJpZBgBIAEoBFICaWQSLwoHY3JlYXRlZBgCIAEoCzIVLnN1YnNvY2lhbC5XaG9BbmRXaGVuUgdjcmVhdGVkEi8KB3VwZGF0ZWQYAyABKAsyFS5zdWJzb2NpYWwuV2hvQW5kV2hlblIHdXBkYXRlZBIsCgRraW5kGAQgASgOMhguc3Vic29jaWFsLlJlYWN0aW9uLktpbmRSBGtpbmQiLwoES2luZBILCgdVTktOT1dOEAASCwoHVVBfVk9URRABEg0KCURPV05fVk9URRAC');
@$core.Deprecated('Use socialAccountDescriptor instead')
const SocialAccount$json = const {
  '1': 'SocialAccount',
  '2': const [
    const {
      '1': 'followers_count',
      '3': 1,
      '4': 1,
      '5': 13,
      '10': 'followersCount'
    },
    const {
      '1': 'following_accounts_count',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'followingAccountsCount'
    },
    const {
      '1': 'following_spaces_count',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'followingSpacesCount'
    },
    const {'1': 'reputation', '3': 4, '4': 1, '5': 13, '10': 'reputation'},
    const {
      '1': 'profile',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Profile',
      '10': 'profile'
    },
  ],
};

/// Descriptor for `SocialAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List socialAccountDescriptor = $convert.base64Decode(
    'Cg1Tb2NpYWxBY2NvdW50EicKD2ZvbGxvd2Vyc19jb3VudBgBIAEoDVIOZm9sbG93ZXJzQ291bnQSOAoYZm9sbG93aW5nX2FjY291bnRzX2NvdW50GAIgASgNUhZmb2xsb3dpbmdBY2NvdW50c0NvdW50EjQKFmZvbGxvd2luZ19zcGFjZXNfY291bnQYAyABKA1SFGZvbGxvd2luZ1NwYWNlc0NvdW50Eh4KCnJlcHV0YXRpb24YBCABKA1SCnJlcHV0YXRpb24SLAoHcHJvZmlsZRgFIAEoCzISLnN1YnNvY2lhbC5Qcm9maWxlUgdwcm9maWxl');
@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {
      '1': 'created',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.WhoAndWhen',
      '10': 'created'
    },
    const {
      '1': 'updated',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.subsocial.WhoAndWhen',
      '10': 'updated'
    },
    const {
      '1': 'content',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'content'
    },
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode(
    'CgdQcm9maWxlEi8KB2NyZWF0ZWQYASABKAsyFS5zdWJzb2NpYWwuV2hvQW5kV2hlblIHY3JlYXRlZBIvCgd1cGRhdGVkGAIgASgLMhUuc3Vic29jaWFsLldob0FuZFdoZW5SB3VwZGF0ZWQSLAoHY29udGVudBgDIAEoCzISLnN1YnNvY2lhbC5Db250ZW50Ugdjb250ZW50');
@$core.Deprecated('Use postUpdateDescriptor instead')
const PostUpdate$json = const {
  '1': 'PostUpdate',
  '2': const [
    const {
      '1': 'content',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'content'
    },
    const {'1': 'hidden', '3': 2, '4': 1, '5': 8, '10': 'hidden'},
  ],
};

/// Descriptor for `PostUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postUpdateDescriptor = $convert.base64Decode(
    'CgpQb3N0VXBkYXRlEiwKB2NvbnRlbnQYASABKAsyEi5zdWJzb2NpYWwuQ29udGVudFIHY29udGVudBIWCgZoaWRkZW4YAiABKAhSBmhpZGRlbg==');
@$core.Deprecated('Use spaceUpdateDescriptor instead')
const SpaceUpdate$json = const {
  '1': 'SpaceUpdate',
  '2': const [
    const {'1': 'parent_id', '3': 1, '4': 1, '5': 4, '10': 'parentId'},
    const {'1': 'handle', '3': 2, '4': 1, '5': 9, '10': 'handle'},
    const {
      '1': 'content',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.subsocial.Content',
      '10': 'content'
    },
    const {'1': 'hidden', '3': 4, '4': 1, '5': 8, '10': 'hidden'},
  ],
};

/// Descriptor for `SpaceUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceUpdateDescriptor = $convert.base64Decode(
    'CgtTcGFjZVVwZGF0ZRIbCglwYXJlbnRfaWQYASABKARSCHBhcmVudElkEhYKBmhhbmRsZRgCIAEoCVIGaGFuZGxlEiwKB2NvbnRlbnQYAyABKAsyEi5zdWJzb2NpYWwuQ29udGVudFIHY29udGVudBIWCgZoaWRkZW4YBCABKAhSBmhpZGRlbg==');
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
@$core.Deprecated('Use spaceByHandleDescriptor instead')
const SpaceByHandle$json = const {
  '1': 'SpaceByHandle',
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

/// Descriptor for `SpaceByHandle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceByHandleDescriptor = $convert.base64Decode(
    'Cg1TcGFjZUJ5SGFuZGxlEiYKBXNwYWNlGAEgASgLMhAuc3Vic29jaWFsLlNwYWNlUgVzcGFjZQ==');
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
      '1': 'post_ids',
      '3': 1,
      '4': 3,
      '5': 4,
      '8': const {'2': true},
      '10': 'postIds',
    },
  ],
};

/// Descriptor for `PostIdsBySpaceId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postIdsBySpaceIdDescriptor = $convert.base64Decode(
    'ChBQb3N0SWRzQnlTcGFjZUlkEh0KCHBvc3RfaWRzGAEgAygEQgIQAVIHcG9zdElkcw==');
@$core.Deprecated('Use reactionIdsByPostIdDescriptor instead')
const ReactionIdsByPostId$json = const {
  '1': 'ReactionIdsByPostId',
  '2': const [
    const {
      '1': 'reaction_ids',
      '3': 1,
      '4': 3,
      '5': 4,
      '8': const {'2': true},
      '10': 'reactionIds',
    },
  ],
};

/// Descriptor for `ReactionIdsByPostId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reactionIdsByPostIdDescriptor = $convert.base64Decode(
    'ChNSZWFjdGlvbklkc0J5UG9zdElkEiUKDHJlYWN0aW9uX2lkcxgBIAMoBEICEAFSC3JlYWN0aW9uSWRz');
@$core.Deprecated('Use replyIdsByPostIdDescriptor instead')
const ReplyIdsByPostId$json = const {
  '1': 'ReplyIdsByPostId',
  '2': const [
    const {
      '1': 'reply_ids',
      '3': 1,
      '4': 3,
      '5': 4,
      '8': const {'2': true},
      '10': 'replyIds',
    },
  ],
};

/// Descriptor for `ReplyIdsByPostId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replyIdsByPostIdDescriptor = $convert.base64Decode(
    'ChBSZXBseUlkc0J5UG9zdElkEh8KCXJlcGx5X2lkcxgBIAMoBEICEAFSCHJlcGx5SWRz');
@$core.Deprecated('Use socialAccountByAccountIdDescriptor instead')
const SocialAccountByAccountId$json = const {
  '1': 'SocialAccountByAccountId',
  '2': const [
    const {
      '1': 'social_account',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.subsocial.SocialAccount',
      '10': 'socialAccount'
    },
  ],
};

/// Descriptor for `SocialAccountByAccountId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List socialAccountByAccountIdDescriptor =
    $convert.base64Decode(
        'ChhTb2NpYWxBY2NvdW50QnlBY2NvdW50SWQSPwoOc29jaWFsX2FjY291bnQYASABKAsyGC5zdWJzb2NpYWwuU29jaWFsQWNjb3VudFINc29jaWFsQWNjb3VudA==');
@$core.Deprecated('Use nextSpaceIdDescriptor instead')
const NextSpaceId$json = const {
  '1': 'NextSpaceId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `NextSpaceId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nextSpaceIdDescriptor =
    $convert.base64Decode('CgtOZXh0U3BhY2VJZBIOCgJpZBgBIAEoBFICaWQ=');
@$core.Deprecated('Use nextPostIdDescriptor instead')
const NextPostId$json = const {
  '1': 'NextPostId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `NextPostId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nextPostIdDescriptor =
    $convert.base64Decode('CgpOZXh0UG9zdElkEg4KAmlkGAEgASgEUgJpZA==');
@$core.Deprecated('Use currentAccountIdDescriptor instead')
const CurrentAccountId$json = const {
  '1': 'CurrentAccountId',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `CurrentAccountId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List currentAccountIdDescriptor = $convert.base64Decode(
    'ChBDdXJyZW50QWNjb3VudElkEh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZA==');
@$core.Deprecated('Use spaceIdsByOwnerDescriptor instead')
const SpaceIdsByOwner$json = const {
  '1': 'SpaceIdsByOwner',
  '2': const [
    const {
      '1': 'space_ids',
      '3': 1,
      '4': 3,
      '5': 4,
      '8': const {'2': true},
      '10': 'spaceIds',
    },
  ],
};

/// Descriptor for `SpaceIdsByOwner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceIdsByOwnerDescriptor = $convert.base64Decode(
    'Cg9TcGFjZUlkc0J5T3duZXISHwoJc3BhY2VfaWRzGAEgAygEQgIQAVIIc3BhY2VJZHM=');
@$core.Deprecated('Use spaceFollowersDescriptor instead')
const SpaceFollowers$json = const {
  '1': 'SpaceFollowers',
  '2': const [
    const {'1': 'account_ids', '3': 1, '4': 3, '5': 9, '10': 'accountIds'},
  ],
};

/// Descriptor for `SpaceFollowers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceFollowersDescriptor = $convert.base64Decode(
    'Cg5TcGFjZUZvbGxvd2VycxIfCgthY2NvdW50X2lkcxgBIAMoCVIKYWNjb3VudElkcw==');
@$core.Deprecated('Use spacesFollowedByAccountDescriptor instead')
const SpacesFollowedByAccount$json = const {
  '1': 'SpacesFollowedByAccount',
  '2': const [
    const {
      '1': 'space_ids',
      '3': 1,
      '4': 3,
      '5': 4,
      '8': const {'2': true},
      '10': 'spaceIds',
    },
  ],
};

/// Descriptor for `SpacesFollowedByAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spacesFollowedByAccountDescriptor =
    $convert.base64Decode(
        'ChdTcGFjZXNGb2xsb3dlZEJ5QWNjb3VudBIfCglzcGFjZV9pZHMYASADKARCAhABUghzcGFjZUlkcw==');
@$core.Deprecated('Use accountFollowersDescriptor instead')
const AccountFollowers$json = const {
  '1': 'AccountFollowers',
  '2': const [
    const {'1': 'account_ids', '3': 1, '4': 3, '5': 9, '10': 'accountIds'},
  ],
};

/// Descriptor for `AccountFollowers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountFollowersDescriptor = $convert.base64Decode(
    'ChBBY2NvdW50Rm9sbG93ZXJzEh8KC2FjY291bnRfaWRzGAEgAygJUgphY2NvdW50SWRz');
@$core.Deprecated('Use accountsFollowedByAccountDescriptor instead')
const AccountsFollowedByAccount$json = const {
  '1': 'AccountsFollowedByAccount',
  '2': const [
    const {'1': 'account_ids', '3': 1, '4': 3, '5': 9, '10': 'accountIds'},
  ],
};

/// Descriptor for `AccountsFollowedByAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountsFollowedByAccountDescriptor =
    $convert.base64Decode(
        'ChlBY2NvdW50c0ZvbGxvd2VkQnlBY2NvdW50Eh8KC2FjY291bnRfaWRzGAEgAygJUgphY2NvdW50SWRz');
@$core.Deprecated('Use generatedAccountDescriptor instead')
const GeneratedAccount$json = const {
  '1': 'GeneratedAccount',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 9, '10': 'publicKey'},
    const {'1': 'seed_phrase', '3': 2, '4': 1, '5': 9, '10': 'seedPhrase'},
  ],
};

/// Descriptor for `GeneratedAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List generatedAccountDescriptor = $convert.base64Decode(
    'ChBHZW5lcmF0ZWRBY2NvdW50Eh0KCnB1YmxpY19rZXkYASABKAlSCXB1YmxpY0tleRIfCgtzZWVkX3BocmFzZRgCIAEoCVIKc2VlZFBocmFzZQ==');
@$core.Deprecated('Use importedAccountDescriptor instead')
const ImportedAccount$json = const {
  '1': 'ImportedAccount',
  '2': const [
    const {'1': 'public_key', '3': 1, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `ImportedAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importedAccountDescriptor = $convert.base64Decode(
    'Cg9JbXBvcnRlZEFjY291bnQSHQoKcHVibGljX2tleRgBIAEoCVIJcHVibGljS2V5');
@$core.Deprecated('Use postReactionCreatedDescriptor instead')
const PostReactionCreated$json = const {
  '1': 'PostReactionCreated',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
    const {'1': 'reaction_id', '3': 2, '4': 1, '5': 4, '10': 'reactionId'},
  ],
};

/// Descriptor for `PostReactionCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postReactionCreatedDescriptor = $convert.base64Decode(
    'ChNQb3N0UmVhY3Rpb25DcmVhdGVkEhcKB3Bvc3RfaWQYASABKARSBnBvc3RJZBIfCgtyZWFjdGlvbl9pZBgCIAEoBFIKcmVhY3Rpb25JZA==');
@$core.Deprecated('Use postCreatedDescriptor instead')
const PostCreated$json = const {
  '1': 'PostCreated',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'post_id', '3': 2, '4': 1, '5': 4, '10': 'postId'},
  ],
};

/// Descriptor for `PostCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postCreatedDescriptor = $convert.base64Decode(
    'CgtQb3N0Q3JlYXRlZBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQSFwoHcG9zdF9pZBgCIAEoBFIGcG9zdElk');
@$core.Deprecated('Use postUpdatedDescriptor instead')
const PostUpdated$json = const {
  '1': 'PostUpdated',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'post_id', '3': 2, '4': 1, '5': 4, '10': 'postId'},
  ],
};

/// Descriptor for `PostUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postUpdatedDescriptor = $convert.base64Decode(
    'CgtQb3N0VXBkYXRlZBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQSFwoHcG9zdF9pZBgCIAEoBFIGcG9zdElk');
@$core.Deprecated('Use spaceFollowedDescriptor instead')
const SpaceFollowed$json = const {
  '1': 'SpaceFollowed',
  '2': const [
    const {'1': 'follower', '3': 1, '4': 1, '5': 9, '10': 'follower'},
    const {'1': 'space_id', '3': 2, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `SpaceFollowed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceFollowedDescriptor = $convert.base64Decode(
    'Cg1TcGFjZUZvbGxvd2VkEhoKCGZvbGxvd2VyGAEgASgJUghmb2xsb3dlchIZCghzcGFjZV9pZBgCIAEoBFIHc3BhY2VJZA==');
@$core.Deprecated('Use spaceUnfollowedDescriptor instead')
const SpaceUnfollowed$json = const {
  '1': 'SpaceUnfollowed',
  '2': const [
    const {'1': 'follower', '3': 1, '4': 1, '5': 9, '10': 'follower'},
    const {'1': 'space_id', '3': 2, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `SpaceUnfollowed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceUnfollowedDescriptor = $convert.base64Decode(
    'Cg9TcGFjZVVuZm9sbG93ZWQSGgoIZm9sbG93ZXIYASABKAlSCGZvbGxvd2VyEhkKCHNwYWNlX2lkGAIgASgEUgdzcGFjZUlk');
@$core.Deprecated('Use postReactionUpdatedDescriptor instead')
const PostReactionUpdated$json = const {
  '1': 'PostReactionUpdated',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
    const {'1': 'reaction_id', '3': 2, '4': 1, '5': 4, '10': 'reactionId'},
  ],
};

/// Descriptor for `PostReactionUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postReactionUpdatedDescriptor = $convert.base64Decode(
    'ChNQb3N0UmVhY3Rpb25VcGRhdGVkEhcKB3Bvc3RfaWQYASABKARSBnBvc3RJZBIfCgtyZWFjdGlvbl9pZBgCIAEoBFIKcmVhY3Rpb25JZA==');
@$core.Deprecated('Use postReactionDeletedDescriptor instead')
const PostReactionDeleted$json = const {
  '1': 'PostReactionDeleted',
  '2': const [
    const {'1': 'post_id', '3': 1, '4': 1, '5': 4, '10': 'postId'},
    const {'1': 'reaction_id', '3': 2, '4': 1, '5': 4, '10': 'reactionId'},
  ],
};

/// Descriptor for `PostReactionDeleted`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postReactionDeletedDescriptor = $convert.base64Decode(
    'ChNQb3N0UmVhY3Rpb25EZWxldGVkEhcKB3Bvc3RfaWQYASABKARSBnBvc3RJZBIfCgtyZWFjdGlvbl9pZBgCIAEoBFIKcmVhY3Rpb25JZA==');
@$core.Deprecated('Use profileCreatedDescriptor instead')
const ProfileCreated$json = const {
  '1': 'ProfileCreated',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `ProfileCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileCreatedDescriptor = $convert.base64Decode(
    'Cg5Qcm9maWxlQ3JlYXRlZBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQ=');
@$core.Deprecated('Use profileUpdatedDescriptor instead')
const ProfileUpdated$json = const {
  '1': 'ProfileUpdated',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `ProfileUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileUpdatedDescriptor = $convert.base64Decode(
    'Cg5Qcm9maWxlVXBkYXRlZBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQ=');
@$core.Deprecated('Use spaceCreatedDescriptor instead')
const SpaceCreated$json = const {
  '1': 'SpaceCreated',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'space_id', '3': 2, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `SpaceCreated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceCreatedDescriptor = $convert.base64Decode(
    'CgxTcGFjZUNyZWF0ZWQSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElkEhkKCHNwYWNlX2lkGAIgASgEUgdzcGFjZUlk');
@$core.Deprecated('Use spaceUpdatedDescriptor instead')
const SpaceUpdated$json = const {
  '1': 'SpaceUpdated',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'space_id', '3': 2, '4': 1, '5': 4, '10': 'spaceId'},
  ],
};

/// Descriptor for `SpaceUpdated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceUpdatedDescriptor = $convert.base64Decode(
    'CgxTcGFjZVVwZGF0ZWQSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElkEhkKCHNwYWNlX2lkGAIgASgEUgdzcGFjZUlk');
@$core.Deprecated('Use accountFollowedDescriptor instead')
const AccountFollowed$json = const {
  '1': 'AccountFollowed',
  '2': const [
    const {'1': 'follower', '3': 1, '4': 1, '5': 9, '10': 'follower'},
    const {'1': 'following', '3': 2, '4': 1, '5': 9, '10': 'following'},
  ],
};

/// Descriptor for `AccountFollowed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountFollowedDescriptor = $convert.base64Decode(
    'Cg9BY2NvdW50Rm9sbG93ZWQSGgoIZm9sbG93ZXIYASABKAlSCGZvbGxvd2VyEhwKCWZvbGxvd2luZxgCIAEoCVIJZm9sbG93aW5n');
@$core.Deprecated('Use accountUnfollowedDescriptor instead')
const AccountUnfollowed$json = const {
  '1': 'AccountUnfollowed',
  '2': const [
    const {'1': 'follower', '3': 1, '4': 1, '5': 9, '10': 'follower'},
    const {'1': 'unfollowing', '3': 2, '4': 1, '5': 9, '10': 'unfollowing'},
  ],
};

/// Descriptor for `AccountUnfollowed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountUnfollowedDescriptor = $convert.base64Decode(
    'ChFBY2NvdW50VW5mb2xsb3dlZBIaCghmb2xsb3dlchgBIAEoCVIIZm9sbG93ZXISIAoLdW5mb2xsb3dpbmcYAiABKAlSC3VuZm9sbG93aW5n');
@$core.Deprecated('Use postReactionIdByAccountDescriptor instead')
const PostReactionIdByAccount$json = const {
  '1': 'PostReactionIdByAccount',
  '2': const [
    const {'1': 'reaction_id', '3': 1, '4': 1, '5': 4, '10': 'reactionId'},
  ],
};

/// Descriptor for `PostReactionIdByAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postReactionIdByAccountDescriptor =
    $convert.base64Decode(
        'ChdQb3N0UmVhY3Rpb25JZEJ5QWNjb3VudBIfCgtyZWFjdGlvbl9pZBgBIAEoBFIKcmVhY3Rpb25JZA==');
@$core.Deprecated('Use accountDataDescriptor instead')
const AccountData$json = const {
  '1': 'AccountData',
  '2': const [
    const {'1': 'free_balance', '3': 1, '4': 1, '5': 9, '10': 'freeBalance'},
    const {
      '1': 'reserved_balance',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'reservedBalance'
    },
    const {
      '1': 'misc_frozen_balance',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'miscFrozenBalance'
    },
    const {
      '1': 'fee_frozen_balance',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'feeFrozenBalance'
    },
  ],
};

/// Descriptor for `AccountData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDataDescriptor = $convert.base64Decode(
    'CgtBY2NvdW50RGF0YRIhCgxmcmVlX2JhbGFuY2UYASABKAlSC2ZyZWVCYWxhbmNlEikKEHJlc2VydmVkX2JhbGFuY2UYAiABKAlSD3Jlc2VydmVkQmFsYW5jZRIuChNtaXNjX2Zyb3plbl9iYWxhbmNlGAMgASgJUhFtaXNjRnJvemVuQmFsYW5jZRIsChJmZWVfZnJvemVuX2JhbGFuY2UYBCABKAlSEGZlZUZyb3plbkJhbGFuY2U=');
@$core.Deprecated('Use systemPropertiesDescriptor instead')
const SystemProperties$json = const {
  '1': 'SystemProperties',
  '2': const [
    const {'1': 'ss58_format', '3': 1, '4': 1, '5': 13, '10': 'ss58Format'},
    const {
      '1': 'token_decimals',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'tokenDecimals'
    },
    const {'1': 'token_symbol', '3': 3, '4': 1, '5': 9, '10': 'tokenSymbol'},
  ],
};

/// Descriptor for `SystemProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemPropertiesDescriptor = $convert.base64Decode(
    'ChBTeXN0ZW1Qcm9wZXJ0aWVzEh8KC3NzNThfZm9ybWF0GAEgASgNUgpzczU4Rm9ybWF0EiUKDnRva2VuX2RlY2ltYWxzGAIgASgNUg10b2tlbkRlY2ltYWxzEiEKDHRva2VuX3N5bWJvbBgDIAEoCVILdG9rZW5TeW1ib2w=');
