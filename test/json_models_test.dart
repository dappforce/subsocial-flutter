import 'package:flutter_test/flutter_test.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

void main() {
  group("PostMetadata", () {
    final jsonPosts = [
      {
        "body": "\n\n> Example body.34234_",
        "title": "Polkadot Digest 27 Aug 2021"
      },
      {
        "body": "\n\n> Example3434 body.34234_",
        "link": "https://www.youtube.com/watch?v=je09G7lmvQs",
        "tags": [
          "Subsocial",
          "Kusama",
          "Polkadot",
          "KSM",
          "DOT",
          "Social Media"
        ]
      },
      {
        "body": "\n\n> Polkadot Updates\n> -------ns-on-kusama/).ls.com)._",
        "image": "QmYDGqZBZ9NUbeccsoBg6iXryS3kutdJgxTYSRRHTiZYTG",
        "tags": [
          "polkadot",
          "kusama",
          "acala",
          "shiden",
          "moonbeam",
          "dotsama"
        ],
        "title": "DotLeap 52: Parachain Auctions, Round 2"
      },
      {
        "body": "\n\n> Example body._",
        "canonical":
            "https://twitter.com/PolkaWarriors_/status/1430411023446540288",
        "image": "QmVDE7VcLhDkfT6pvyLbiF55WTkCeCRhjXcSFNaNykcFzf",
        "tags": [
          "MOVR",
          "Moonriver",
          "Moonbeam",
          "Metamask",
          "Polkadot Ecosystem"
        ],
        "title": "How to add Moonriver to Metamask"
      }
    ];

    for (var i = 0; i < jsonPosts.length; i++) {
      final jsonPost = jsonPosts[i];
      test("test #$i", () {
        final post = PostMetadata.fromJson(jsonPost);
        expect(post.body, jsonPost['body']);
        expect(post.image, jsonPost['image']);
        expect(post.tags, jsonPost['tags']);
        expect(post.title, jsonPost['title']);
        expect(post.link, jsonPost['link']);
        expect(post.canonical, jsonPost['canonical']);
      });
    }
  });
}
