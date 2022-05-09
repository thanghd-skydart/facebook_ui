import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton(
      {Key? key, this.icon, this.iconSize, required this.onPressed})
      : super(key: key);
  final IconData? icon;
  final double? iconSize;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(icon ?? Icons.search),
        onPressed: onPressed,
        color: Colors.black,
        iconSize: iconSize ?? 30.0,
      ),
    );
  }
}
