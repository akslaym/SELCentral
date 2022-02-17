import 'package:flutter/material.dart';
import 'package:SELCentral/AccountTypePage/AccountTypePageV.dart';

class LoginPageV extends StatelessWidget {
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
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountTypePageV()),
                            );
                          },
                          autofocus: false,
                          icon: const Icon(Icons.arrow_back),
                          iconSize: 40.0,
                        ),
                        margin: EdgeInsets.only(bottom: heightBlock * 0.1)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 11.0,
                        child: Text("Login",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 48, //need to move to left

                                color: Colors.white,
                                fontFamily: 'Montserrat')),
                        margin: EdgeInsets.only(bottom: heightBlock * 2)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 8.0,
                        child: TextButton(
                            onPressed: () {},
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Username",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 36),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff305CFC),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 1.5)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 8.0,
                        child: TextButton(
                            onPressed: () {},
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Password",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 36),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff305CFC),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 0.1)),
                    Container(
                        width: widthBlock * 80.0,
                        height: heightBlock * 5.0,
                        alignment: Alignment.bottomLeft,
                        child: TextButton(
                            onPressed: () {},
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white60,
                                  fontSize: 18),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    Color(0xff305CFC).withOpacity(.01),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 2.0)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 6.0,
                        child: TextButton(
                            onPressed: () {},
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xffEE7FE3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 4)),
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
