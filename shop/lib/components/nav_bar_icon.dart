import 'package:flutter/material.dart';
import 'package:shop/globals.dart';

class NavBarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, bottom: 18.0, top: 22.0),
      child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 14.0,
            height: 3.0,
            color: kHighlightedColor,
          ),
          SizedBox(
            height: 3.0,
          ),
          Container(
            width: 20.0,
            height: 3.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 3.0,
          ),
          Container(
            width: 8.0,
            height: 3.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
