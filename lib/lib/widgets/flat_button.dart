import 'package:flutter/material.dart';

class FlatButtonCus extends StatelessWidget {
  const FlatButtonCus(
      {Key? key,
      required this.icon,
      this.colorIcon,
      required this.label,
      required this.labelStyle,
      required this.onPressed})
      : super(key: key);
  final IconData icon;
  final Color? colorIcon;
  final String label;
  final TextStyle labelStyle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(
            icon,
            color: colorIcon ?? Colors.red,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            label,
            style: labelStyle,
          ),
        ],
      ),
    );
  }
}
