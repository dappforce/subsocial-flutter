import 'package:subsocial_sdk/subsocial_sdk.dart';

/// The four visible state filters correspond to the next conditions:
///
/// - `onlyVisible` – The `hidden` field on corresponding Substrate struct (e.g. `Space` or `Post`) is `false`.
/// - `onlyHidden` – The `hidden` field on corresponding Substrate struct (e.g. `Space` or `Post`) is `true`.
/// - `onlyPublic` – The `hidden` field on corresponding Substrate struct (e.g. `Space` or `Post`) is `false`
/// and there is a corresponding JSON file on IPFS.
/// - `onlyUnlisted` – Either the `hidden` field on corresponding Substrate struct (e.g. `Space` or `Post`) is `true`
/// or there is a no corresponding JSON file on IPFS.
enum Visibility {
  onlyVisible,
  onlyHidden,
  onlyPublic,
  onlyUnlisted,
}

class Filter<ID> {
  final Visibility visibility;
  final bool withContentOnly;
  final List<ID> ids;

  const Filter({
    required this.ids,
    this.visibility = Visibility.onlyVisible,
    this.withContentOnly = false,
  });
}

extension MultiQuery on Subsocial {
  /// Returns a stream of all public [Space]s.
  Stream<SpaceWithMetadata> publicSpaces({
    int page = 1,
    int limit = 30,
  }) async* {
    final lastSpaceId = await nextSpaceId() - 1;
    final from = lastSpaceId - ((page - 1) * limit);
    final to = from - limit;
    final ipfs = IpfsClient();
    for (int i = from; i >= to; i--) {
      try {
        final space = await spaceById(i);
        if (space.hidden) continue; // skip hidden space
        final cid = space.content.ipfs;
        if (cid.isEmpty) continue; // no content;
        final metadataMap = await ipfs.query(
          [cid],
          (json) => SpaceMetadata.fromJson(json),
        );
        final maybeMetadata = metadataMap[cid];
        if (maybeMetadata == null) continue; // skip this too.
        yield SpaceWithMetadata(space: space, metadata: maybeMetadata);
      } catch (_) {
        continue;
      }
    }
  }

  /// Returns a stream of all public [Post]s.
  Stream<PostWithMetadata> publicPosts({
    int page = 1,
    int limit = 30,
  }) async* {
    final lastPostId = await nextPostId() - 1;
    final from = lastPostId - ((page - 1) * limit);
    final to = from - limit;
    final ipfs = IpfsClient();
    for (int i = from; i >= to; i--) {
      try {
        final post = await postById(i);
        if (post.hidden) continue; // skip hidden space
        final cid = post.content.ipfs;
        if (cid.isEmpty) continue; // no content;
        final metadataMap = await ipfs.query(
          [cid],
          (json) => PostMetadata.fromJson(json),
        );
        final maybeMetadata = metadataMap[cid];
        if (maybeMetadata == null) continue; // skip this too.
        yield PostWithMetadata(post: post, metadata: maybeMetadata);
      } catch (_) {
        continue;
      }
    }
  }

  Future<List<Space>> spaces(Filter<SpaceId> filter) async {
    final List<Space> spaces = [];
    for (final id in filter.ids) {
      try {
        final space = await spaceById(id);
        switch (filter.visibility) {
          case Visibility.onlyUnlisted:
            if (space.hidden && !space.hasContent()) spaces.add(space);
            break;
          case Visibility.onlyHidden:
            if (space.hidden) spaces.add(space);
            break;
          case Visibility.onlyVisible:
            if (!space.hidden) spaces.add(space);
            break;
          case Visibility.onlyPublic:
            if (!space.hidden && space.hasContent()) spaces.add(space);
            break;
        }
      } catch (_) {
        continue;
      }
    }
    return spaces;
  }

  Future<List<Post>> posts(Filter<PostId> filter) async {
    final List<Post> posts = [];
    for (final id in filter.ids) {
      try {
        final post = await postById(id);
        switch (filter.visibility) {
          case Visibility.onlyUnlisted:
            if (post.hidden && !post.hasContent()) posts.add(post);
            break;
          case Visibility.onlyHidden:
            if (post.hidden) posts.add(post);
            break;
          case Visibility.onlyVisible:
            if (!post.hidden) posts.add(post);
            break;
          case Visibility.onlyPublic:
            if (!post.hidden && post.hasContent()) posts.add(post);
            break;
        }
      } catch (_) {
        continue;
      }
    }
    return posts;
  }

  Future<List<SocialAccount>> socialAccounts(List<AccountId> ids) async {
    final List<SocialAccount> accounts = [];
    for (final id in ids) {
      try {
        final account = await socialAccountByAccountId(id);
        accounts.add(account);
      } catch (_) {
        continue;
      }
    }
    return accounts;
  }

  Future<List<Reaction>> reactions(List<ReactionId> ids) async {
    final List<Reaction> reactions = [];
    for (final id in ids) {
      try {
        final reaction = await reactionById(id);
        reactions.add(reaction);
      } catch (_) {
        continue;
      }
    }
    return reactions;
  }
}
