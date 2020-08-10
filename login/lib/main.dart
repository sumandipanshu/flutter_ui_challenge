import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  final email = TextEditingController();
  final pswd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [const Color(0xFFe75200), const Color(0xFFf58310)],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 15.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFFf1f1f1),
                    fontSize: 45.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 40.0),
                child: Text('Welcome Back',
                    style: TextStyle(
                      color: Color(0xFFf1f1f1),
                      fontSize: 20.0,
                    )),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60.0),
                        topRight: Radius.circular(60.0)),
                    color: Colors.white,
                  ),
                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 35.0),
                          elevation: 15.0,
                          child: Column(
                            children: [
                              TextField(
                                controller: email,
                                decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1.0,
                                      color: Color(0xffeeeeee),
                                    ),
                                  ),
                                  labelText: 'Email or Phone number',
                                  contentPadding: EdgeInsets.all(10.0),
                                ),
                              ),
                              TextField(
                                controller: pswd,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Password',
                                  contentPadding: EdgeInsets.all(10.0),
                                ),
                              ),
                            ],
                          )),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xff9e9e9e),
                          fontSize: 14.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 35.0),
                          width: 200.0,
                          height: 50.0,
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xcce65100),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                      Text(
                        'Continue with social media',
                        style: TextStyle(
                          color: Color(0xff9e9e9e),
                          fontSize: 14.0,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 15.0),
                              width: 130.0,
                              height: 50.0,
                              child: Center(
                                child: Text(
                                  'Facebook',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xcc2196f3),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 15.0),
                              width: 130.0,
                              height: 50.0,
                              child: Center(
                                child: Text(
                                  'Github',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xcc000000),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
