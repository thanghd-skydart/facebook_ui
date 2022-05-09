import 'package:facebook_responsive/lib/data/data.dart';
import 'package:facebook_responsive/lib/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:facebook_responsive/lib/screen/home_screen/home_screen.dart';

import 'widget/custom_app_bar.dart';
import 'widget/custom_tap_bar.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                child: CustomAppBar(
                    currentUser: currentUser,
                    icons: _icons,
                    selectedIndex: _selectedIndex,
                    onTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    }),
                preferredSize: Size(screenSize.width, 100))
            : null,

        /// option 1
        // body: _screens[_selectedIndex],

        /// option 2

        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),

        /// option 3

        // body: TabBarView(
        //   physics: const NeverScrollableScrollPhysics(),
        //   children: _screens,
        // ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? Container(
                child: SafeArea(
                  child: CustomTapBar(
                      icons: _icons,
                      selectedIndex: _selectedIndex,
                      onTap: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      }),
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
