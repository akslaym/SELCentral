import 'dart:async';

import 'package:SELCentral/HomePage/HomePage.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  LoadingPage({Key key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  bool _isTitleVisible = false;
  bool _isDescriptionVisible = false;
  bool _isImage = false;
  bool _isButton = false;
  Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer(
      Duration(milliseconds: 300),
      () => {
        setState(() {
          _isImage = true;
        }),
      },
    );
    _timer = Timer(
      Duration(milliseconds: 1500),
      () => {
        setState(() {
          _isTitleVisible = true;
        }),
      },
    );
    _timer = Timer(
      Duration(milliseconds: 3000),
      () => {
        setState(() {
          _isDescriptionVisible = true;
        }),
      },
    );
    _timer = Timer(
      Duration(milliseconds: 4500),
      () => {
        setState(() {
          _isButton = true;
        }),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double widthBlock = constraints.maxWidth / 100.0;
      double heightBlock = constraints.maxHeight / 100.0;
      return Scaffold(
        body: Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          color: Color(0xFF305CFC).withOpacity(0.68),
          child: Column(children: [
            Container(
                width: constraints.maxWidth - 30,
                margin: EdgeInsets.only(top: widthBlock * 10.0),
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1500),
                  opacity: _isImage ? 1.0 : 0.0,
                  curve: Curves.easeIn,
                  child: Container(
                      alignment: Alignment.center,
                      child: Image.asset('lib/assets/IGNITELogo_Logo.jpg')),
                )),
            AnimatedOpacity(
                duration: Duration(milliseconds: 1500),
                opacity: _isTitleVisible ? 1.0 : 0.0,
                curve: Curves.easeIn,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  width: constraints.maxWidth - 30,
                  margin: EdgeInsets.only(top: widthBlock * 10.0),
                  decoration: BoxDecoration(
                      color: Color(0xFF305CFC).withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Welcome to IgniteSEL",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        )),
                  ),
                )),
            AnimatedOpacity(
                duration: Duration(milliseconds: 1500),
                opacity: _isDescriptionVisible ? 1.0 : 0.0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF305CFC).withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  width: constraints.maxWidth - 30,
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.only(top: widthBlock * 5.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                        "Ignite Our Future is on a mission to unleash the power of positivity through social emotional learning. We envision a world where every child has hope, compassion, joy, and love for their fellow human beings. ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        )),
                  ),
                )),
            AnimatedOpacity(
                duration: Duration(milliseconds: 1500),
                opacity: _isButton ? 1.0 : 0.0,
                child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF305CFC).withOpacity(0.9),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(top: widthBlock * 10.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                      autofocus: false,
                      clipBehavior: Clip.none,
                      child: Text(
                        "Click to Continue",
                        style: TextStyle(
                            color: Colors.white, fontSize: heightBlock * 3),
                      ),
                    ))),
          ]),
        ),
        backgroundColor: Colors.white,
      );
    });
  }
}
