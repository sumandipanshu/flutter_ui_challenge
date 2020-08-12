import 'package:flutter/material.dart';
import 'package:shop/routes/home.dart';
import 'package:shop/routes/product_details.dart';
import 'globals.dart';

void main() => runApp(Shop());

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: AppBarTheme(
          color: kPrimaryColor,
          elevation: 0.0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/productDetails': (context) => ProductDetails(),
      },
    );
  }
}
