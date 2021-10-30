import 'dart:io';
import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

void main() {
  final suri = Platform.environment['SURI'] ?? '//Alice';

  test('Get Space with Id', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceById(1);
    expect(space.handle, "subsocial");
  });

  test('Get AccountData with AccountId', () async {
    final sdk = await Subsocial.instance;
    final accountData = await sdk.queryAccountData(
      "5GHnQYfvZdxJHSWnZqiM5eKdj2UawJs4s9Tqn22ckvLEENvc",
    );
    final freeBalance = BigInt.parse(accountData.freeBalance);
    expect(freeBalance, BigInt.from(100042893226878));
  });

  test('Get Space with handle', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final _ = await IpfsClient().query(
      [space.content.ipfs],
      (json) => SpaceMetadata.fromJson(json),
    );
    expect(space.id.toInt(), 1);
  });

  test('Get SpaceIds By Owner', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceById(1);
    expect(space.hasOwner(), true);
    expect(space.handle, "subsocial");
    final spaceIds = await sdk.spaceIdsByOwner(space.owner);
    expect(spaceIds.contains(space.id.toInt()), true);
  });

  test('Get Space Posts', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final postIds = await sdk.postsIdsBySpaceId(space.id.toInt());
    final first5Posts = postIds.take(5);
    for (final postId in first5Posts) {
      final post = await sdk.postById(postId.toInt());
      final _ = await IpfsClient().query(
        [post.content.ipfs],
        (json) => PostMetadata.fromJson(json),
      );
      expect(post.spaceId, space.id);
    }
  });

  test('Get Post Reactions', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final postIds = await sdk.postsIdsBySpaceId(space.id.toInt());
    final firstPostId = postIds.first;
    final reactionIds = await sdk.reactionIdsByPostId(firstPostId);
    final first5Reactions = reactionIds.take(5);
    for (final reactionId in first5Reactions) {
      final _ = await sdk.reactionById(reactionId.toInt());
    }
  });

  test('Get Post Replies', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final postIds = await sdk.postsIdsBySpaceId(space.id.toInt());
    final firstPostId = postIds.first;
    final repliesIds = await sdk.replyIdsByPostId(firstPostId);
    final first5Replies = repliesIds.take(5);
    for (final replyId in first5Replies) {
      final reply = await sdk.postById(replyId.toInt());
      expect(reply.hasExtensionValue(), true);
      expect(reply.extensionValue.hasComment(), true);
      expect(reply.extensionValue.comment.rootPostId.toInt(), firstPostId);
    }
  });

  test('Get Social Accounts', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final owner = await sdk.socialAccountByAccountId(space.owner);
    expect(owner.hasProfile(), true);
    expect(owner.profile.hasContent(), true);
  });

  test('Next {Space,Post}Id', () async {
    final sdk = await Subsocial.instance;
    final nextSpaceId = await sdk.nextSpaceId();
    final nextPostId = await sdk.nextPostId();
    expect(nextSpaceId > 0, true);
    expect(nextPostId > 0, true);
  });

  test('Get Space Followers', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final spaceFollowers = await sdk.spaceFollowers(space.id.toInt());
    expect(spaceFollowers.length, space.followersCount);
  });

  test('Get Spaces Followed by AccountId', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final followedSpaces = await sdk.spacesFollowedByAccount(space.owner);
    expect(followedSpaces.contains(space.id.toInt()), true);
  });

  test('Generate Account', () async {
    final sdk = await Subsocial.instance;
    final account = await sdk.generateAccount();
    expect(account.hasPublicKey(), true);
    expect(account.hasSeedPhrase(), true);
  });

  test('Import Account', () async {
    final sdk = await Subsocial.instance;
    final account = await sdk.importAccount(suri: '//Alice');
    expect(account.hasPublicKey(), true);

    // generate and import.
    final generated = await sdk.generateAccount();
    final imported = await sdk.importAccount(suri: generated.seedPhrase);
    expect(generated.publicKey, imported.publicKey);
  });

  test('Create Post Reaction', () async {
    final sdk = await Subsocial.instance;
    final account = await sdk.importAccount(suri: suri);
    expect(account.hasPublicKey(), true);
    final lastPostId = await sdk.nextPostId();
    final randomPostId = Random.secure().nextInt(lastPostId - 1);
    final event = await sdk.createPostReaction(
      postId: randomPostId,
      kind: Reaction_Kind.UP_VOTE,
    );
    expect(event.postId.toInt(), randomPostId);
    expect(event.hasReactionId(), true);
  }, skip: true);

  test('(un)followSpace', () async {
    final sdk = await Subsocial.instance;
    final account = await sdk.importAccount(suri: suri);
    expect(account.hasPublicKey(), true);
    final lastSpaceId = await sdk.nextSpaceId();
    final spaceId = Random.secure().nextInt(lastSpaceId - 1);
    final spaceFollowed = await sdk.followSpace(spaceId: spaceId);
    expect(spaceFollowed.spaceId.toInt(), spaceId);
    final spaceUnfollowed = await sdk.unfollowSpace(spaceId: spaceId);
    expect(spaceUnfollowed.spaceId.toInt(), spaceId);
  }, skip: true);

  test('postReactionIdByAccount', () async {
    final sdk = await Subsocial.instance;
    const postId = 19544;
    const accountId = "3pYyydiZfeTL7iVxcYqw9bVyPbFXdVHSomUNzg4SpdycD5tg";
    final reactionId = await sdk.postReactionIdByAccount(
      postId: postId,
      accountId: accountId,
    );
    expect(reactionId, 32967);
  });
}
