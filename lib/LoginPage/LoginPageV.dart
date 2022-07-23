//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:IgniteSEL/PasswordPage/PasswordPageV.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:IgniteSEL/HomePage/HomePage.dart';

import '../VideoPage/QuoteFuntions/Fetch.dart';
import '../VideoPage/QuoteFuntions/Quote.dart';

TextEditingController passwordController = new TextEditingController();

class LoginPageV extends StatefulWidget {
  const LoginPageV({Key key}) : super(key: key);
  LoginPageVState createState() => LoginPageVState();
}

class LoginPageVState extends State<LoginPageV> {
  Quote quote;
  checkLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      var status = prefs.getBool("isLoggedIn");
      print(status);
      if (status == true) {
        runApp(MaterialApp(home: HomePage(quote)));
      }
    });
  }

  @override
  Future<void> initState() {
    super.initState();
    checkLoggedIn();
  }

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
                        width: widthBlock * 85.0,
                        height: heightBlock * 16.0,
                        child: Text("Ignite SEL",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize:
                                    heightBlock * 6, //need to move to left

                                color: Colors.white,
                                fontFamily: 'Montserrat')),
                        margin: EdgeInsets.only(
                            top: 15.0, bottom: heightBlock * 0.5)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 8.0,
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white, fontSize: heightBlock * 4.5),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              fillColor: Color(0xff305CFC),
                              filled: true,
                              hintText: 'First Name'),
                        ),
                        margin: EdgeInsets.only(bottom: heightBlock * 1.5)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 8.0,
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white, fontSize: heightBlock * 4.5),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              fillColor: Color(0xff305CFC),
                              filled: true,
                              hintText: 'Last Name'),
                        ),
                        margin: EdgeInsets.only(bottom: heightBlock * 1.5)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 8.0,
                        child: TextField(
                          style: TextStyle(
                              color: Colors.white, fontSize: heightBlock * 4.5),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              fillColor: Color(0xff305CFC),
                              filled: true,
                              hintText: 'School Name'),
                        ),
                        margin: EdgeInsets.only(bottom: heightBlock * 1.5)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 8.0,
                        child: TextField(
                          controller: passwordController,
                          style: TextStyle(
                              color: Colors.white, fontSize: heightBlock * 4.5),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              fillColor: Color(0xff305CFC),
                              filled: true,
                              hintText: 'Password'),
                        ),
                        margin: EdgeInsets.only(bottom: heightBlock * 1.5)),
                    Container(
                        width: widthBlock * 80.0,
                        height: heightBlock * 5.0,
                        alignment: Alignment.bottomLeft,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PasswordPageV()),
                              );
                            },
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Unsure of Password?",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white60,
                                  fontSize: heightBlock * 2.25),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    Color(0xff305CFC).withOpacity(.01),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 2.0)),
                    Container(
                        width: widthBlock * 85.0,
                        height: heightBlock * 7.0,
                        child: TextButton(
                            onPressed: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              //prefs.setBool("isLoggedIn", false);
                              if (passwordController.text == "SPARK") {
                                prefs.setBool('isLoggedIn', true);
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage(quote)));
                              }
                              //if (prefs.getBool("isLoggedIn") == true) {
                              //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                              //}
                            },
                            autofocus: false,
                            clipBehavior: Clip.none,
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: heightBlock * 4),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xffEE7FE3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40)))),
                        margin: EdgeInsets.only(bottom: heightBlock * 4)),
                    Container(
                        width: widthBlock * 90.0,
                        height: heightBlock * 15.0,
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
