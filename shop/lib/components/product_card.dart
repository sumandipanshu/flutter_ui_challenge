import 'package:flutter/material.dart';
import 'package:shop/components/icon_layout.dart';
import 'package:shop/globals.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    @required this.price,
    @required this.productCompany,
    @required this.productName,
    @required this.image,
    @required this.cardColor,
  });
  final String productName;
  final String productCompany;
  final double price;
  final String image;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/productDetails');
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0, top: 60.0, bottom: 10.0),
            padding: EdgeInsets.all(15.0),
            width: 200.0,
            height: 240.0,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'by $productCompany',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: kHighlightedColor,
                        fontSize: 20.0,
                      ),
                    ),
                    IconLayout(
                      icon: Icons.shopping_bag_outlined,
                      iconColor: Colors.black,
                      bgColor: kHighlightedColor,
                      size: 22,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Image.asset(
              image,
              width: 200.0,
              height: 200.0,
            ),
          ),
        ],
      ),
    );
  }
}
