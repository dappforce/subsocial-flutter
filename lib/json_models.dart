import 'package:flutter/foundation.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

class SpaceMetadata {
  late List<String> links;
  late String name;
  late List<String> tags;
  String? handle;
  String? about;
  String? image;

  SpaceMetadata({
    required this.links,
    required this.name,
    this.tags = const [],
    this.handle,
    this.about,
    this.image,
  });

  SpaceMetadata.fromJson(Map<String, dynamic> json) {
    about = json['about'] as String?;
    handle = json['handle'] as String?;
    image = json['image'] as String?;
    links =
        json['links'] != null ? (json['links'] as List<dynamic>).cast() : [];
    name = json['name'] as String;
    tags = (json['tags'] as List<dynamic>).cast<String>();
  }
}

class PostMetadata {
  late String body;
  late List<String> tags;
  late String? title;
  late String? image;

  PostMetadata({
    required this.body,
    required this.tags,
    this.title,
    this.image,
  });

  PostMetadata.fromJson(Map<String, dynamic> json) {
    body = json['body'] as String;
    tags = json['tags'] != null ? (json['tags'] as List<dynamic>).cast() : [];
    image = json['image'] as String?;
    title = json['title'] as String?;
  }
}

@immutable
class SpaceWithMetadata {
  final Space space;
  final SpaceMetadata metadata;
  const SpaceWithMetadata({required this.space, required this.metadata});
}

@immutable
class PostWithMetadata {
  final Post post;
  final PostMetadata metadata;
  const PostWithMetadata({required this.post, required this.metadata});
}
