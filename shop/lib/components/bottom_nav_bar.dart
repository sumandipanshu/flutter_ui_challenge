import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shop/components/icon_layout.dart';
import '../globals.dart';

enum Nav {
  home,
  fav,
  search,
  cart,
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Nav selected = Nav.home;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.20),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconLayout(
                  icon: Icons.home_outlined,
                  iconColor: selected == Nav.home ? Colors.black : Colors.white,
                  bgColor: selected == Nav.home
                      ? kHighlightedColor
                      : Color(0xff6a6a6a),
                  size: 22,
                  onPress: () {
                    setState(() {
                      selected = Nav.home;
                    });
                  },
                ),
                IconLayout(
                  icon: Icons.favorite_border,
                  iconColor: selected == Nav.fav ? Colors.black : Colors.white,
                  bgColor: selected == Nav.fav
                      ? kHighlightedColor
                      : Color(0xff6a6a6a),
                  size: 22,
                  onPress: () {
                    setState(() {
                      selected = Nav.fav;
                    });
                  },
                ),
                IconLayout(
                  icon: Icons.search,
                  iconColor:
                      selected == Nav.search ? Colors.black : Colors.white,
                  bgColor: selected == Nav.search
                      ? kHighlightedColor
                      : Color(0xff6a6a6a),
                  size: 22,
                  onPress: () {
                    setState(() {
                      selected = Nav.search;
                    });
                  },
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    IconLayout(
                      icon: Icons.shopping_bag_outlined,
                      iconColor:
                          selected == Nav.cart ? Colors.black : Colors.white,
                      bgColor: selected == Nav.cart
                          ? kHighlightedColor
                          : Color(0xff6a6a6a),
                      size: 22,
                      onPress: () {
                        setState(() {
                          selected = Nav.cart;
                        });
                      },
                    ),
                    Positioned(
                      top: -3,
                      right: -3,
                      child: Container(
//                        padding: EdgeInsets.all(3),
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: kHighlightedColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            '15',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
