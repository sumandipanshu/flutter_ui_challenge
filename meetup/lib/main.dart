import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kPrimaryColor = Color(0xff92394d);
const kSecondColor = Color(0xffffd9e5);
const kThirdColor = Color(0xffffb0cd);
const kFourthColor = Color(0xffff80ab);

void main() => runApp(MeetUp());

class MeetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 5.0,
          backgroundColor: Colors.white,
          title: Text(
            'Meetup',
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
            size: 30.0,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.search,
                color: kPrimaryColor,
                size: 30.0,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
//          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          clipBehavior: Clip.none,
          child: Container(
            width: 360.0,
            height: 750.0,
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                begin: Alignment.topCenter,
//                end: Alignment.bottomCenter,
//                colors: [const Color(0xFFffffff), kFourthColor],
//                tileMode: TileMode.clamp,
//              ),
//            ),
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Positioned(
//                height: 850.0,
                  top: 0.0,
                  bottom: 0.0,
                  child: Container(
                    height: 850.0,
                    width: 360.0,
                    decoration: BoxDecoration(
                      color: kFourthColor,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 580.0,
                        ),
                        Text(
                          'Today 9:00 PM',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Easy and Gentle Yoga',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 150.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                                color: kThirdColor,
                                borderRadius: BorderRadius.circular(25.0),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 6.0,
                                    offset: const Offset(1.0, 3.0),
                                    color: Colors.grey[600],
                                  )
                                ]),
                            child: Center(
                              child: Text('You are going !',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0,
                                  )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
//                height: 450.0,
                  top: 0.0,
                  bottom: 300.0,
                  child: Container(
                    height: 450.0,
                    width: 360.0,
                    decoration: BoxDecoration(
                      color: kThirdColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(70.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 280.0,
                        ),
                        Text(
                          'Today 8:00 PM',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Practice French, English and Chinese',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.checkCircle,
                                color: kPrimaryColor,
                                size: 40.0,
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.timesCircle,
                                color: kPrimaryColor,
                                size: 40.0,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.0,
                  bottom: 500.0,
//                width: 400.0,
                  child: Container(
                    height: 250.0,
                    width: 360.0,
                    decoration: BoxDecoration(
                      color: kSecondColor,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(70.0)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100.0,
                        ),
                        Text(
                          'Today 6:00 PM',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Text(
                          'Yoga and Meditation for Beginners',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            ProfileImageStack(),
                            SizedBox(
                              width: 50.0,
                            ),
                            Text(
                              'Marie and 4 others',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70.0)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TopIcons(
                        icon: FontAwesomeIcons.music,
                      ),
                      TopIcons(
                        icon: FontAwesomeIcons.chartLine,
                      ),
                      TopIcons(
                        icon: FontAwesomeIcons.heart,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileImageStack extends StatelessWidget {
  const ProfileImageStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        CircleAvatar(
          backgroundColor: Colors.green[100],
        ),
        Positioned(
          left: 10.0,
          child: CircleAvatar(
            backgroundColor: Colors.green[300],
          ),
        ),
        Positioned(
          left: 21.0,
          child: CircleAvatar(
            backgroundColor: Colors.green[500],
          ),
        ),
        Positioned(
          left: 33.0,
          child: CircleAvatar(
            backgroundColor: Colors.green[700],
          ),
        ),
        Positioned(
          left: 46.0,
          child: CircleAvatar(
            backgroundColor: Colors.green[900],
          ),
        ),
      ],
    );
  }
}

class TopIcons extends StatelessWidget {
  TopIcons({@required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          icon,
          color: kPrimaryColor,
        ),
        onPressed: () {},
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1.0, color: Colors.grey),
      ),
    );
  }
}
