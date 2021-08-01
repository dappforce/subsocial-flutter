import 'package:flutter_test/flutter_test.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

void main() {
  test('Get Space with Id', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceById(1);
    expect(space.handle, "subsocial");
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
}
