import 'package:IgniteSEL/HomePage/HomePageButtons.dart';
import 'package:IgniteSEL/HomePage/HomePageHeader.dart';
import 'package:IgniteSEL/ResourcesPage/ResourcesPage.dart';
import 'package:IgniteSEL/VideoPage/VideoPage.dart';
import 'package:flutter/material.dart';

import '../VideoPage/QuoteFuntions/Quote.dart';

class HomePage extends StatelessWidget {
  HomePage(this.quote);
  final Quote quote;
  @override
  Widget build(BuildContext context) {
    print(quote);
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
                      image: new NetworkImage(
                          "https://via.placeholder.com/728x300")),
                ),
                //Buttons
                HomePageButtons(
                    color: Color(0xFF476FFF),
                    title: "Lessons",
                    icon: Icons.videocam,
                    heightBlock: heightBlock,
                    widthBlock: widthBlock,
                    page: new VideoPage(quote)),
                HomePageButtons(
                    color: Color(0xFF61D782),
                    title: "Resources",
                    icon: Icons.settings,
                    heightBlock: heightBlock,
                    widthBlock: widthBlock,
                    page: new ResourcesPage()),
              ]),
        ),
      );
    });
  }
}
