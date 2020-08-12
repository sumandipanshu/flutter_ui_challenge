import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/components/bottom_nav_bar.dart';
import 'package:shop/components/category_section.dart';
import 'package:shop/components/nav_bar_icon.dart';
import 'package:shop/components/product_card.dart';
import 'package:shop/components/user_avatar.dart';
import 'package:shop/globals.dart';
import 'package:shop/components/menu_bar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        leading: NavBarIcon(),
        actions: [
          UserAvatar(
            image: Icon(
              FontAwesomeIcons.userAlt,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MenuBar(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  ProductCard(
                    productName: 'Pro-Van Venco',
                    productCompany: 'baximco',
                    price: 34.50,
                    image: 'images/pro-vac.png',
                    cardColor: kActiveCardColor,
                  ),
                  ProductCard(
                    productName: 'Disease Vaccine',
                    productCompany: 'B1 Strain',
                    price: 21.44,
                    image: 'images/live-b1.png',
                    cardColor: kInactiveCardColor,
                  ),
                ],
              ),
            ),
            CategorySection(),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
