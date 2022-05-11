import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:facebook_responsive/lib/config/palate.dart';
import 'package:facebook_responsive/lib/model/user_model.dart';
import 'package:facebook_responsive/lib/widgets/user_card.dart';

class MoreOptionList extends StatelessWidget {
  const MoreOptionList({
    Key? key,
    required this.currentUser,
  }) : super(key: key);
  final UserModel currentUser;
  final List<List> _moreOptionList = const [
    [MdiIcons.shieldAccount, Colors.deepPurple, "Thông tin covid 19"],
    [MdiIcons.accountMultiple, Colors.cyan, "Bạn bè"],
    [MdiIcons.facebookMessenger, Palatte.facebookBlue, "Messenger"],
    [MdiIcons.flag, Colors.orange, "Trang và nhóm"],
    [MdiIcons.storefront, Palatte.facebookBlue, "Marketplace"],
    [Icons.ondemand_video, Palatte.facebookBlue, "Xem trước"],
    [MdiIcons.calendarStar, Colors.red, "Sự kiện "],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
        itemCount: 1 + _moreOptionList.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: UserCard(user: currentUser),
            );
          }
          final List option = _moreOptionList[index - 1];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: _Option(icon: option[0], color: option[1], label: option[2]),
          );
        },
      ),
    );
  }
}

class _Option extends StatelessWidget {
  const _Option({
    Key? key,
    required this.icon,
    required this.label,
    required this.color,
  }) : super(key: key);
  final IconData icon;
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(children: [
        Icon(
          icon,
          size: 38,
          color: color,
        ),
        const SizedBox(width: 6),
        Flexible(
            child: Text(
          label,
          style: const TextStyle(fontSize: 16),
          overflow: TextOverflow.ellipsis,
        ))
      ]),
    );
  }
}
