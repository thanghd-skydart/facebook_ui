import 'package:facebook_responsive/lib/config/palate.dart';
import 'package:flutter/material.dart';

class CustomTapBar extends StatelessWidget {
  const CustomTapBar({
    Key? key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Palatte.facebookBlue, width: 2),
        ),
      ),
      indicatorPadding: EdgeInsets.zero,
      tabs: icons
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: (i == selectedIndex)
                        ? Palatte.facebookBlue
                        : Colors.black45,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
