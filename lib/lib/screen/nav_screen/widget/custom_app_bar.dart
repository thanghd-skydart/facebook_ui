import 'package:facebook_responsive/lib/screen/nav_screen/widget/custom_tap_bar.dart';
import 'package:facebook_responsive/lib/widgets/circle_button.dart';
import 'package:flutter/material.dart';

import 'package:facebook_responsive/lib/model/model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../config/palate.dart';
import '../../../widgets/user_card.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.currentUser,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);
  final UserModel currentUser;
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 65.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, offset: Offset(0, 2), blurRadius: 4)
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                  color: Palatte.facebookBlue,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1.2),
            ),
          ),
          SizedBox(
            width: 600,
            child: CustomTapBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              UserCard(
                user: currentUser,
              ),
              const SizedBox(
                width: 12,
              ),
              CircleButton(
                onPressed: () {},
                icon: Icons.search,
                iconSize: 30,
              ),
              CircleButton(
                onPressed: () {},
                icon: MdiIcons.facebookMessenger,
                iconSize: 30,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
