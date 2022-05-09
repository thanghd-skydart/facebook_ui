import 'dart:convert';

import 'user_model.dart';

class StoryModel {
  final UserModel user;
  final String imageUrl;
  final bool isViewed;
  StoryModel({
    required this.user,
    required this.imageUrl,
    required this.isViewed,
  });

  StoryModel copyWith({
    UserModel? user,
    String? imageUrl,
    bool? isViewed,
  }) {
    return StoryModel(
      user: user ?? this.user,
      imageUrl: imageUrl ?? this.imageUrl,
      isViewed: isViewed ?? this.isViewed,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'user': user.toMap()});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'isViewed': isViewed});

    return result;
  }

  factory StoryModel.fromMap(Map<String, dynamic> map) {
    return StoryModel(
      user: UserModel.fromMap(map['user']),
      imageUrl: map['imageUrl'] ?? '',
      isViewed: map['isViewed'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoryModel.fromJson(String source) =>
      StoryModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'StoryModel(user: $user, imageUrl: $imageUrl, isViewed: $isViewed)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StoryModel &&
        other.user == user &&
        other.imageUrl == imageUrl &&
        other.isViewed == isViewed;
  }

  @override
  int get hashCode => user.hashCode ^ imageUrl.hashCode ^ isViewed.hashCode;
}
