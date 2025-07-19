class CommunityPost {
  final String tag;
  final String content;
  final String? imagePath;
  final String authorName;
  final String? authorImagePath;
  final String? id;
  final DateTime? createdAt;

  CommunityPost({
    required this.tag,
    required this.content,
    this.imagePath,
    required this.authorName,
    this.authorImagePath,
    this.id,
    this.createdAt,
  });

  // JSON에서 객체 생성
  factory CommunityPost.fromJson(Map<String, dynamic> json) {
    return CommunityPost(
      id: json['id'],
      tag: json['tag'],
      content: json['content'],
      imagePath: json['imagePath'],
      authorName: json['authorName'],
      authorImagePath: json['authorImagePath'],
      createdAt: json['createdAt'] != null 
          ? DateTime.parse(json['createdAt']) 
          : null,
    );
  }

  // 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'tag': tag,
      'content': content,
      'imagePath': imagePath,
      'authorName': authorName,
      'authorImagePath': authorImagePath,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  // 복사본 생성 (일부 필드만 변경)
  CommunityPost copyWith({
    String? tag,
    String? content,
    String? imagePath,
    String? authorName,
    String? authorImagePath,
    String? id,
    DateTime? createdAt,
  }) {
    return CommunityPost(
      tag: tag ?? this.tag,
      content: content ?? this.content,
      imagePath: imagePath ?? this.imagePath,
      authorName: authorName ?? this.authorName,
      authorImagePath: authorImagePath ?? this.authorImagePath,
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
    );
  }
} 