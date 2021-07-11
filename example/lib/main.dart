import 'dart:math';

import 'package:flutter/material.dart';
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
    // this loads subsocial sdk for the first time.
    final _ = Subsocial.instance;
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
        if (cid.isEmpty) continue; // no metadata;
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
    final tags = item.metadata.tags.map((e) => Chip(label: Text(e))).toList();
    return Card(
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
                Text(
                  item.metadata.name,
                  style: Theme.of(context).textTheme.headline6,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 3,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: Text(
                item.metadata.about ?? '',
                style: Theme.of(context).textTheme.bodyText2,
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
    );
  }
}

Color randColor({int? seed}) {
  final rnd = seed != null ? Random(seed) : Random.secure();
  final value = (rnd.nextDouble() * 16777215.0).floor();
  return Color(value).withAlpha(rnd.nextInt(155) + 100);
}
