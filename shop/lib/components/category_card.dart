import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard(
      {@required this.categoryName,
      @required this.image,
      @required this.color});

  final String categoryName;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      width: 158.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 50,
            child: Center(
              child: Text(
                categoryName,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -30,
            left: 5,
            child: Image.asset(
              image,
              width: 150.0,
              height: 150.0,
            ),
          ),
        ],
      ),
    );
  }
}
