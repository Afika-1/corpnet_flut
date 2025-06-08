class Post {
  final String id;
  final String userId;
  final String content;
  final int likes;
  final List<String> comments;

  Post({
    required this.id,
    required this.userId,
    required this.content,
    this.likes = 0,
    this.comments = const [],
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      content: json['content'],
      likes: json['likes'] ?? 0,
      comments: List<String>.from(json['comments'] ?? []),
    );
  }
}