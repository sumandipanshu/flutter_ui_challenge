import 'package:flutter/material.dart';

class IconLayout extends StatelessWidget {
  IconLayout({
    @required this.icon,
    @required this.iconColor,
    @required this.bgColor,
    this.onPress,
    this.size = 20.0,
  });
  final IconData icon;
  final Color iconColor;
  final Color bgColor;
  final Function onPress;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 35.0,
        height: 35.0,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: size,
        ),
      ),
    );
  }
}
