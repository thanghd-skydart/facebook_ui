import 'dart:convert';

class UserModel {
  final String name;
  final String imgUrl;
  final bool isActive;
  UserModel({
    required this.name,
    required this.imgUrl,
    required this.isActive,
  });

  UserModel copyWith({
    String? name,
    String? imgUrl,
    bool? isActive,
  }) {
    return UserModel(
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      isActive: isActive ?? this.isActive,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'imgUrl': imgUrl});
    result.addAll({'isActive': isActive});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      imgUrl: map['imgUrl'] ?? '',
      isActive: map['isActive'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'UserModel(name: $name, imgUrl: $imgUrl, isActive: $isActive)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.imgUrl == imgUrl &&
        other.isActive == isActive;
  }

  @override
  int get hashCode => name.hashCode ^ imgUrl.hashCode ^ isActive.hashCode;
}
