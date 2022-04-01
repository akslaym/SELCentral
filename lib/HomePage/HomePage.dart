import 'package:SELCentral/HomePage/HomePageHeader.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double widthBlock = constraints.maxWidth / 100.0;
      double heightBlock = constraints.maxHeight / 100.0;
      return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Color(0xFF305CFC).withOpacity(0.68),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomePageHeader(widthBlock, heightBlock),
                //Image
                Container(
                  width: widthBlock * 100.0,
                  height: heightBlock * 20.0,
                  child: Image(
                      image: new AssetImage("https://i.picsum.photos/300/200")),
                ),
                //Buttons
              ]),
        ),
      );
    });
  }
}
