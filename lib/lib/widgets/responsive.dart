import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  static bool isMobile(context) => MediaQuery.of(context).size.width < 800;
  static bool isTablet(context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;
  static bool isDesktop(context) => MediaQuery.of(context).size.width >= 1200;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return desktop;
        } else if (constraints.maxWidth >= 800) {
          return tablet ?? mobile;
        }
        return mobile;
      },
    );
  }
}
