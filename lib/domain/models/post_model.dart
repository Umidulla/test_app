final class PostList {
  List<PostModel?>? allPost = [];
  PostList({required this.allPost});

  PostList.fromJson(List<dynamic> json) {
    allPost = json.map((post) => PostModel.fromJson(post)).toList();
  }
}

final class PostModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const PostModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      userId: json['userId'] ?? -1,
      id: json['id'] ?? -1,
      title: json['title'] ?? 'Error',
      body: json['body'] ?? 'Error',
    );
  }
}
