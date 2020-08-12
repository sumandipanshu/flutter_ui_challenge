import 'package:flutter/material.dart';
import 'package:shop/globals.dart';
import 'tab.dart';

enum MenuItems {
  vaccine,
  sanitizer,
  mask,
  gloves,
  handwash,
}

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  MenuItems selected = MenuItems.vaccine;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Tabs(
            text: 'Vaccine',
            bgColor: selected == MenuItems.vaccine
                ? kActiveTabColor
                : kInactiveTabColor,
            textColor: selected == MenuItems.vaccine
                ? kActiveTextColor
                : kInactiveTextColor,
            onPress: () {
              setState(() {
                selected = MenuItems.vaccine;
              });
            },
          ),
          Tabs(
            text: 'Sanitizer',
            bgColor: selected == MenuItems.sanitizer
                ? kActiveTabColor
                : kInactiveTabColor,
            textColor: selected == MenuItems.sanitizer
                ? kActiveTextColor
                : kInactiveTextColor,
            onPress: () {
              setState(() {
                selected = MenuItems.sanitizer;
              });
            },
          ),
          Tabs(
            text: 'Mask',
            bgColor: selected == MenuItems.mask
                ? kActiveTabColor
                : kInactiveTabColor,
            textColor: selected == MenuItems.mask
                ? kActiveTextColor
                : kInactiveTextColor,
            onPress: () {
              setState(() {
                selected = MenuItems.mask;
              });
            },
          ),
          Tabs(
            text: 'Gloves',
            bgColor: selected == MenuItems.gloves
                ? kActiveTabColor
                : kInactiveTabColor,
            textColor: selected == MenuItems.gloves
                ? kActiveTextColor
                : kInactiveTextColor,
            onPress: () {
              setState(() {
                selected = MenuItems.gloves;
              });
            },
          ),
          Tabs(
            text: 'HandWash',
            bgColor: selected == MenuItems.handwash
                ? kActiveTabColor
                : kInactiveTabColor,
            textColor: selected == MenuItems.handwash
                ? kActiveTextColor
                : kInactiveTextColor,
            onPress: () {
              setState(() {
                selected = MenuItems.handwash;
              });
            },
          ),
        ],
      ),
    );
  }
}
