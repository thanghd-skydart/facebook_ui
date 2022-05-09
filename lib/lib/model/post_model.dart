import 'dart:convert';

import 'package:facebook_responsive/lib/model/user_model.dart';

class PostModel {
  final UserModel user;
  final String caption;
  final String timeAgo;
  final String imageUrl;
  final int likes;
  final int comments;
  final int shares;
  PostModel({
    required this.user,
    required this.caption,
    required this.timeAgo,
    required this.imageUrl,
    required this.likes,
    required this.comments,
    required this.shares,
  });

  PostModel copyWith({
    UserModel? user,
    String? caption,
    String? timeAgo,
    String? imageUrl,
    int? likes,
    int? comments,
    int? shares,
  }) {
    return PostModel(
      user: user ?? this.user,
      caption: caption ?? this.caption,
      timeAgo: timeAgo ?? this.timeAgo,
      imageUrl: imageUrl ?? this.imageUrl,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      shares: shares ?? this.shares,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'user': user.toMap()});
    result.addAll({'caption': caption});
    result.addAll({'timeAgo': timeAgo});
    result.addAll({'imageUrl': imageUrl});
    result.addAll({'likes': likes});
    result.addAll({'comments': comments});
    result.addAll({'shares': shares});

    return result;
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      user: UserModel.fromMap(map['user']),
      caption: map['caption'] ?? '',
      timeAgo: map['timeAgo'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      likes: map['likes']?.toInt() ?? 0,
      comments: map['comments']?.toInt() ?? 0,
      shares: map['shares']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) =>
      PostModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PostModel(user: $user, caption: $caption, timeAgo: $timeAgo, imageUrl: $imageUrl, likes: $likes, comments: $comments, shares: $shares)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PostModel &&
        other.user == user &&
        other.caption == caption &&
        other.timeAgo == timeAgo &&
        other.imageUrl == imageUrl &&
        other.likes == likes &&
        other.comments == comments &&
        other.shares == shares;
  }

  @override
  int get hashCode {
    return user.hashCode ^
        caption.hashCode ^
        timeAgo.hashCode ^
        imageUrl.hashCode ^
        likes.hashCode ^
        comments.hashCode ^
        shares.hashCode;
  }
}
