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
    expect(space.id.toInt(), 1);
  });

  test('Get Space Posts', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final postIds = await sdk.postsIdsBySpaceId(space.id.toInt());
    for (final postId in postIds) {
      final post = await sdk.postById(postId.toInt());
      expect(post.spaceId, space.id);
    }
  });

  test('Get Post Reactions', () async {
    final sdk = await Subsocial.instance;
    final space = await sdk.spaceByHandle("subsocial");
    final postIds = await sdk.postsIdsBySpaceId(space.id.toInt());
    final firstPostId = postIds.first;
    final reactionIds = await sdk.reactionIdsByPostId(firstPostId);
    for (final reactionId in reactionIds) {
      final _ = await sdk.reactionById(reactionId.toInt());
    }
  });
}
