import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  Tabs(
      {@required this.text,
      @required this.bgColor,
      @required this.textColor,
      @required this.onPress,
      this.fontSize = 14});
  final String text;
  final Color bgColor;
  final Color textColor;
  final Function onPress;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0, right: 15),
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
