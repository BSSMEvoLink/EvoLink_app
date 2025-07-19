class MatchPerson {
  final String industry;
  final String stack;
  final String userType;
  final String location;
  final String name;
  final String imageUrl;
  final String? portfolioUrl;
  final String? id;
  final String? email;
  final String? description;
  final DateTime? createdAt;

  MatchPerson({
    required this.industry,
    required this.stack,
    required this.userType,
    required this.location,
    required this.name,
    required this.imageUrl,
    this.portfolioUrl,
    this.id,
    this.email,
    this.description,
    this.createdAt,
  });

  // JSON에서 객체 생성
  factory MatchPerson.fromJson(Map<String, dynamic> json) {
    return MatchPerson(
      id: json['id'],
      industry: json['industry'],
      stack: json['stack'],
      userType: json['userType'],
      location: json['location'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      email: json['email'],
      description: json['description'],
      createdAt: json['createdAt'] != null 
          ? DateTime.parse(json['createdAt']) 
          : null,
    );
  }

  // 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'industry': industry,
      'stack': stack,
      'userType': userType,
      'location': location,
      'name': name,
      'imageUrl': imageUrl,
      'email': email,
      'description': description,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  // 복사본 생성 (일부 필드만 변경)
  MatchPerson copyWith({
    String? industry,
    String? stack,
    String? userType,
    String? location,
    String? name,
    String? imageUrl,
    String? portfolioUrl,
    String? id,
    String? email,
    String? description,
    DateTime? createdAt,
  }) {
    return MatchPerson(
      industry: industry ?? this.industry,
      stack: stack ?? this.stack,
      userType: userType ?? this.userType,
      location: location ?? this.location,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      portfolioUrl: portfolioUrl ?? this.portfolioUrl,
      id: id ?? this.id,
      email: email ?? this.email,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
    );
  }
} 