class SpaceMetadata {
  late String about;
  late String handle;
  late String image;
  late List<String> links;
  late String name;
  late List<String> tags;

  SpaceMetadata({
    required this.about,
    required this.handle,
    required this.image,
    required this.links,
    required this.name,
    required this.tags,
  });

  SpaceMetadata.fromJson(Map<String, dynamic> json) {
    about = json['about'] as String;
    handle = json['handle'] as String;
    image = json['image'] as String;
    links = (json['links'] as List<dynamic>).cast<String>();
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
    tags = (json['tags'] as List<dynamic>).cast<String>();
    image = json['image'] as String?;
    title = json['title'] as String?;
  }
}
