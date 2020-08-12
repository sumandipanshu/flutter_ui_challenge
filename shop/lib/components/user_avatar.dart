import 'package:flutter/material.dart';
import 'package:shop/globals.dart';

class UserAvatar extends StatelessWidget {
  UserAvatar({this.image});
  final Widget image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0, right: 15.0),
        width: 35.0,
//            height: 30.0,
        decoration: BoxDecoration(
          color: kHighlightedColor,
          borderRadius: BorderRadius.circular(13.0),
        ),
        child: image,
      ),
    );
  }
}
