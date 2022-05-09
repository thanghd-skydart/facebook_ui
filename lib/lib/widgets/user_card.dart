import 'package:facebook_responsive/lib/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:facebook_responsive/lib/model/model.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    Key? key,
    required this.user,
  }) : super(key: key);
  final UserModel user;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ProfileAvatar(imgUrl: user.imgUrl),
        const SizedBox(width: 16),
        Text(
          user.name,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
