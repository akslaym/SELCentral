import 'package:SELCentral/LoginPage/LoginPageV.dart';
import 'package:flutter/material.dart';

class AccountTypePageV extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double widthBlock = constraints.maxWidth / 100.0;
      double heightBlock = constraints.maxHeight / 100.0;
      return Container(
        color: Colors.white,
        child: Scaffold(
            backgroundColor: Color(0xff305CFC).withOpacity(0.66),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Text("I am a...",
                            style: TextStyle(
                                fontSize: heightBlock * 6,
                                color: Colors.white,
                                fontFamily: 'Montserrat')),
                        margin: EdgeInsets.only(bottom: heightBlock * 2)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 15.0,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPageV()),
                              );
                            },
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Student",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: heightBlock * 6),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff305CFC),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 2)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 15.0,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPageV()),
                              );
                            },
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Teacher",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: heightBlock * 6),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff61D782),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 2)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 15.0,
                        child: TextButton(
                            onPressed: () {},
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "New Account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: heightBlock * 5.6),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xffEE7FE3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 2)),
                    Container(
                        width: widthBlock * 90.0,
                        height: heightBlock * 25.0,
                        color: Colors.blue[700],
                        margin: EdgeInsets.only(top: heightBlock * 1))
                  ],
                )),
              ],
            )),
      );
    });
  }
}
