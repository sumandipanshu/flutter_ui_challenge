import 'package:flutter/material.dart';
import 'package:shop/components/category_card.dart';

enum Category {
  sanitization,
  all,
}

class CategorySection extends StatefulWidget {
  @override
  _CategorySectionState createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  bool visiblity = false;
  Category selected = Category.sanitization;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = Category.sanitization;
                  visiblity = false;
                });
              },
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Sanitization',
                  style: TextStyle(
                    color: selected == Category.sanitization
                        ? Colors.white
                        : Colors.grey,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = Category.all;
                  visiblity = true;
                });
              },
              child: Container(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'All',
                  style: TextStyle(
                    color:
                        selected == Category.all ? Colors.white : Colors.grey,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryCard(
                  categoryName: 'Mask',
                  image: 'images/mask.png',
                  color: Color(0xff575759),
                ),
                CategoryCard(
                  categoryName: 'Gloves',
                  image: 'images/gloves.png',
                  color: Color(0xff575759),
                ),
              ],
            ),
            Visibility(
              visible: visiblity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CategoryCard(
                    categoryName: 'Sanitizer',
                    image: 'images/sanitizer.png',
                    color: Color(0xff575759),
                  ),
                  CategoryCard(
                    categoryName: 'Hand Wash',
                    image: 'images/soap.png',
                    color: Color(0xff575759),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: visiblity,
              child: SizedBox(
                height: 40.0,
              ),
            )
          ],
        ),
      ],
    );
  }
}
