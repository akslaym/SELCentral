import 'package:flutter/material.dart';

class PasswordPageH extends StatelessWidget {
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
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                        child: Text("I am a...",
                            style: TextStyle(
                                fontSize: widthBlock * 6,
                                color: Colors.white,
                                fontFamily: 'Montserrat')),
                        margin: EdgeInsets.only(left: heightBlock * 9)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: widthBlock * 28.0,
                        height: heightBlock * 67.0,
                        child: TextButton(
                            onPressed: () {},
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Student",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: widthBlock * 6),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff305CFC),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(
                            right: widthBlock * 3, left: widthBlock * 2)),
                    Container(
                        width: widthBlock * 28.0,
                        height: heightBlock * 67.0,
                        child: TextButton(
                            onPressed: () {},
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Teacher",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: widthBlock * 6),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff61D782),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(right: widthBlock * 3)),
                    Container(
                        width: widthBlock * 28.0,
                        height: heightBlock * 67.0,
                        child: TextButton(
                            onPressed: () {},
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "New Account",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: widthBlock * 6),
                              textAlign: TextAlign.center,
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xffEE7FE3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(
                          right: widthBlock * 2,
                        )),
                  ],
                )
              ],
            )),
      );
    });
  }
}
