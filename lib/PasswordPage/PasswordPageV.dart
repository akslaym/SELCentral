import 'package:IgniteSEL/LoginPage/LoginPageV.dart';
import 'package:flutter/material.dart';

class PasswordPageV extends StatelessWidget {
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
                        width: widthBlock * 90.0,
                        height: heightBlock * 18.0,
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          autofocus: false,
                          icon: const Icon(Icons.arrow_back),
                          iconSize: heightBlock * 5,
                          onPressed: () {
                            Navigator.maybePop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPageV()),
                            );
                          },
                        ),
                        margin: EdgeInsets.only(bottom: heightBlock * 0.1)),
                    Container(
                        width: widthBlock * 90.0,
                        height: heightBlock * 25.0,
                        color: Colors.blue[700],
                        margin: EdgeInsets.only(top: heightBlock * 1)),
                    Container(
                        width: widthBlock * 90.0,
                        height: heightBlock * 25.0,
                        color: Colors.blue[700],
                        margin: EdgeInsets.only(top: heightBlock * 1)),
                    Container(
                        width: widthBlock * 90.0,
                        height: heightBlock * 25.0,
                        color: Colors.blue[700],
                        margin: EdgeInsets.only(top: heightBlock * 1)),
                  ],
                )),
              ],
            )),
      );
    });
  }
}
