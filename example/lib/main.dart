import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _kPageSize = 10;
  final _pagingController = PagingController<int, SpaceWithMetadata>(
    firstPageKey: 1,
  );
  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPublicSpacesPage(pageKey);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFBB028C),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Subsocial Flutter'),
        ),
        body: PagedListView<int, SpaceWithMetadata>(
          pagingController: _pagingController,
          builderDelegate: PagedChildBuilderDelegate(
            itemBuilder: (context, item, index) => SpaceWidget(item),
          ),
        ),
      ),
    );
  }

  Future<void> _fetchPublicSpacesPage(int pageKey) async {
    final from = pageKey;
    final to = pageKey + _kPageSize - 1;
    final sdk = await Subsocial.instance;
    final ipfs = IpfsClient();
    final List<SpaceWithMetadata> items = [];
    print('Loading Spaces from $from to $to ..');
    // get spaces
    for (int i = from; i <= to; i++) {
      try {
        final space = await sdk.spaceById(i);
        if (space.hidden) continue; // skip hidden space
        final cid = space.content.ipfs;
        if (cid.isEmpty) continue; // no content;
        final metadataMap = await ipfs.query(
          [cid],
          (json) => SpaceMetadata.fromJson(json),
        );
        final maybeMetadata = metadataMap[cid];
        if (maybeMetadata == null) continue; // skip this too.
        items.add(SpaceWithMetadata(space: space, metadata: maybeMetadata));
      } catch (e) {
        print('Error while getting space $i : $e');
        continue;
      }
    }
    final isLastPage = items.isEmpty;
    if (isLastPage) {
      _pagingController.appendLastPage([]);
    } else {
      int nextPageKey = pageKey + _kPageSize;
      // load first 30 then go to 1000 (if we are not already there).
      if (nextPageKey >= 30 && nextPageKey < 1000) {
        nextPageKey = 1001;
      }

      _pagingController.appendPage(items, nextPageKey);
    }
  }

  @override
  Future<void> dispose() async {
    _pagingController.dispose();
    super.dispose();
  }
}

class SpaceWidget extends StatelessWidget {
  final SpaceWithMetadata item;
  const SpaceWidget(this.item);

  @override
  Widget build(BuildContext context) {
    bool hasImage = item.metadata.image != null;
    hasImage = hasImage && item.metadata.image!.isNotEmpty;
    final imageUrl =
        hasImage ? IpfsClient().mediaUrl(item.metadata.image!) : '';
    final tags = item.metadata.tags.takeWhile((e) => e is String).map((e) => Chip(label: Text(e!))).toList();
    return GestureDetector(
      onTap: () async {
        if (item.space.postsCount == 0) return; // no posts
        final sb = SnackBar(content: Text("Loading Posts .."));
        ScaffoldMessenger.of(context).showSnackBar(sb);
        final sdk = await Subsocial.instance;
        final postIds = await sdk.postsIdsBySpaceId(item.space.id.toInt());
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostsList(
              spaceWithMetadata: item,
              // reverse the list, so we get the most recent posts first
              postIds: postIds.reversed.toList(growable: false),
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      backgroundColor:
                          randColor(seed: item.metadata.name.hashCode),
                      backgroundImage:
                          imageUrl.isNotEmpty ? NetworkImage(imageUrl) : null,
                      radius: 26,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item.metadata.name,
                      style: Theme.of(context).textTheme.headline6,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: MarkdownBody(
                  data: item.metadata.about ?? '',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  spacing: 4.0,
                  children: tags,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${item.space.postsCount} Posts',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      '${item.space.followersCount} Followers',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PostsList extends StatefulWidget {
  final SpaceWithMetadata spaceWithMetadata;
  final List<PostId> postIds;
  final bool fullPage;
  final bool isReplies;
  const PostsList({
    required this.spaceWithMetadata,
    required this.postIds,
    this.fullPage = true,
    this.isReplies = false,
  });
  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  static const _kPageSize = 10;
  final _pagingController = PagingController<int, PostWithMetadata>(
    firstPageKey: 0,
  );

  @override
  void initState() {
    super.initState();
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPublicPosts(pageKey);
    });
  }

  Future<void> _fetchPublicPosts(int pageKey) async {
    final from = pageKey;
    final to = math.min(pageKey + _kPageSize - 1, widget.postIds.length - 1);
    final sdk = await Subsocial.instance;
    final ipfs = IpfsClient();
    final List<PostWithMetadata> items = [];
    print('Loading Posts from $from to $to ..');
    // get posts
    for (int i = from; i <= to; i++) {
      final postId = widget.postIds[i];
      try {
        final post = await sdk.postById(postId);
        if (post.hidden) continue; // skip hidden space
        final cid = post.content.ipfs;
        if (cid.isEmpty) continue; // no content;
        final metadataMap = await ipfs.query(
          [cid],
          (json) => PostMetadata.fromJson(json),
        );
        final maybeMetadata = metadataMap[cid];
        if (maybeMetadata == null) continue; // skip this too.
        items.add(PostWithMetadata(post: post, metadata: maybeMetadata));
      } catch (e) {
        print('Error while getting post $postId : $e');
        continue;
      }
    }
    final isLastPage = items.isEmpty;
    if (isLastPage) {
      _pagingController.appendLastPage([]);
    } else {
      int nextPageKey = pageKey + _kPageSize;
      _pagingController.appendPage(items, nextPageKey);
    }
  }

  @override
  Widget build(BuildContext context) {
    final postsList = PagedListView<int, PostWithMetadata>(
      pagingController: _pagingController,
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      builderDelegate: PagedChildBuilderDelegate(
        itemBuilder: (context, item, index) => GestureDetector(
          onTap: () async {
            if (item.post.repliesCount == 0) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PostDetails(
                    postWithMetadata: item,
                    spaceWithMetadata: widget.spaceWithMetadata,
                    isReply: widget.isReplies,
                  ),
                ),
              );
            } else {
              final sb = SnackBar(content: Text("Loading Replies .."));
              ScaffoldMessenger.of(context).showSnackBar(sb);
              final sdk = await Subsocial.instance;
              final postId = item.post.id.toInt();
              final replyIds = await sdk.replyIdsByPostId(postId);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PostDetails(
                    postWithMetadata: item,
                    spaceWithMetadata: widget.spaceWithMetadata,
                    replyIds: replyIds,
                    isReply: widget.isReplies,
                  ),
                ),
              );
            }
          },
          child: PostWidget(item),
        ),
      ),
    );
    if (widget.fullPage) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.spaceWithMetadata.metadata.name),
        ),
        body: postsList,
      );
    } else {
      return postsList;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}

class PostWidget extends StatelessWidget {
  final PostWithMetadata item;
  final bool showFullBody;
  final bool isReply;
  const PostWidget(
    this.item, {
    this.showFullBody = false,
    this.isReply = false,
  });
  @override
  Widget build(BuildContext context) {
    bool hasImage = item.metadata.image != null;
    hasImage = hasImage && item.metadata.image!.isNotEmpty;
    final imageUrl =
        hasImage ? IpfsClient().mediaUrl(item.metadata.image!) : '';
    final tags = item.metadata.tags.map((e) => Chip(label: Text(e))).toList();
    final body = showFullBody
        ? item.metadata.body
        : item.metadata.body.substring(
              0,
              math.min(item.metadata.body.length, 400),
            ) +
            ' ...';
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            if (imageUrl.isNotEmpty)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(imageUrl),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isReply && item.metadata.title != null)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.metadata.title!,
                        style: Theme.of(context).textTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ),
                  ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: MarkdownBody(
                data: body,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                spacing: 4.0,
                children: tags,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${item.post.upvotesCount} Upvotes',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    '${item.post.downvotesCount} Downvotes',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(
                    '${item.post.repliesCount} Comments',
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PostDetails extends StatefulWidget {
  final PostWithMetadata postWithMetadata;
  final SpaceWithMetadata spaceWithMetadata;
  final List<PostId> replyIds;
  final bool isReply;
  const PostDetails({
    required this.spaceWithMetadata,
    required this.postWithMetadata,
    this.replyIds = const [],
    this.isReply = false,
  });
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.isReply ? Text('Replies') : Text('Post Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PostWidget(
              widget.postWithMetadata,
              showFullBody: true,
              isReply: widget.isReply,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: PostsList(
                spaceWithMetadata: widget.spaceWithMetadata,
                postIds: widget.replyIds,
                fullPage: false,
                isReplies: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Color randColor({int? seed}) {
  final rnd = seed != null ? math.Random(seed) : math.Random.secure();
  final value = (rnd.nextDouble() * 16777215.0).floor();
  return Color(value).withAlpha(rnd.nextInt(155) + 100);
}
