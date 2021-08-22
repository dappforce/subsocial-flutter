import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

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
    if (json['tags'] != null) {
      tags = (json['tags'] as List<dynamic>).cast();
    } else {
      tags = [];
    }
    image = json['image'] as String?;
    title = json['title'] as String?;
  }

  String toJson() {
    return jsonEncode({
      'title': title,
      'image': image,
      'tags': tags,
      'body': body,
    });
  }
}

@immutable
class PostWithMetadata {
  final Post post;
  final PostMetadata metadata;
  const PostWithMetadata({required this.post, required this.metadata});
}

class SocialAccountMetadata {
  late String? about;
  late String? name;
  late String? avatar;

  SocialAccountMetadata({
    this.name,
    this.about,
    this.avatar,
  });

  SocialAccountMetadata.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    about = json['about'] as String?;
    avatar = json['avatar'] as String?;
  }
}

@immutable
class SocialAccountWithMetadata {
  final SocialAccount socialAccount;
  final SocialAccountMetadata metadata;
  const SocialAccountWithMetadata({
    required this.socialAccount,
    required this.metadata,
  });
}

class SpaceMetadata {
  late List<String?> links;
  late String name;
  late List<String?> tags;
  String? handle;
  String? about;
  String? image;

  SpaceMetadata({
    required this.name,
    this.links = const [],
    this.tags = const [],
    this.handle,
    this.about,
    this.image,
  });

  SpaceMetadata.fromJson(Map<String, dynamic> json) {
    about = json['about'] as String?;
    handle = json['handle'] as String?;
    image = json['image'] as String?;
    if (json['links'] != null) {
      links = (json['links'] as List<dynamic>).cast();
    } else {
      links = [];
    }
    name = json['name'] as String;
    tags = (json['tags'] as List<dynamic>).cast<String>();
  }
}

@immutable
class SpaceWithMetadata {
  final Space space;
  final SpaceMetadata metadata;
  const SpaceWithMetadata({required this.space, required this.metadata});
}
