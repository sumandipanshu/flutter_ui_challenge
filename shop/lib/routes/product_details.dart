import 'package:flutter/material.dart';
import 'package:shop/components/tab.dart';
import 'package:shop/globals.dart';

enum Quantity {
  fifty,
  hundred,
  onefifty,
}

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool fav = false;
  Quantity selected = Quantity.fifty;
  int countOfProducts = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(left: 20.0, top: 50.0, bottom: 15.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: kActiveCardColor,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Image.asset(
                    'images/pro-vac.png',
                    width: 300.0,
                    height: 230.0,
                  ),
                ),
                Positioned(
                  top: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                      size: 28,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      fav ? Icons.favorite : Icons.favorite_border,
                      color: fav ? Colors.red : Colors.white,
                      size: 25,
                    ),
                    onPressed: () {
                      setState(() {
                        fav = !fav;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Pro-Vac Venco',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'by baximco',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'A COVID-19 vaccine manufacturing plant of the institute in Kunming, capital city Yunnan Province, will be put into use in the second half of 2020',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 1,
                  width: 80,
                  color: Colors.grey,
                ),
                Text(
                  '\$34.50',
                  style: TextStyle(
                    color: kHighlightedColor,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 1,
                  width: 80,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Tabs(
                  text: '50 ml',
                  bgColor: selected == Quantity.fifty
                      ? kActiveTabColor
                      : kInactiveTabColor,
                  textColor: selected == Quantity.fifty
                      ? kActiveTextColor
                      : kInactiveTextColor,
                  onPress: () {
                    setState(() {
                      selected = Quantity.fifty;
                    });
                  },
                  fontSize: 16,
                ),
                Tabs(
                  text: '100 ml',
                  bgColor: selected == Quantity.hundred
                      ? kActiveTabColor
                      : kInactiveTabColor,
                  textColor: selected == Quantity.hundred
                      ? kActiveTextColor
                      : kInactiveTextColor,
                  onPress: () {
                    setState(() {
                      selected = Quantity.hundred;
                    });
                  },
                  fontSize: 16,
                ),
                Tabs(
                  text: '150 ml',
                  bgColor: selected == Quantity.onefifty
                      ? kActiveTabColor
                      : kInactiveTabColor,
                  textColor: selected == Quantity.onefifty
                      ? kActiveTextColor
                      : kInactiveTextColor,
                  onPress: () {
                    setState(() {
                      selected = Quantity.onefifty;
                    });
                  },
                  fontSize: 16,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 80),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[600].withOpacity(0.4),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (countOfProducts > 1) countOfProducts--;
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff6d6d6f),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    countOfProducts.toString(),
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        countOfProducts++;
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 50,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: kHighlightedColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: 22,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Add to bucket',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
