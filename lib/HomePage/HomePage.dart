import 'dart:convert';
import 'dart:math';

import 'package:SELCentral/HomePage/HomePageButtons.dart';
import 'package:SELCentral/HomePage/HomePageHeader.dart';
import 'package:SELCentral/ResourcesPage/ResourcesPage.dart';
import 'package:SELCentral/VideoPage/VideoPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Quote {
  final String author;
  final String text;

  const Quote({
    this.author,
    this.text,
  });

  factory Quote.fromJson(Map<String, dynamic> json) {
    int randomIndex = Random().nextInt(176);
    return Quote(
      author: json['Items'][randomIndex]["Author"]["S"],
      text: json['Items'][randomIndex]["Quote"]["S"],
    );
  }
}

Future<Quote> fetchQuote() async {
  final response = await http.get(Uri.parse(
      'https://mfuyns4d2m.execute-api.us-east-2.amazonaws.com/Quotes_Deploy/quotes'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Quote.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<Quote> futureQuote;
  void initState() {
    super.initState();
    futureQuote = fetchQuote();
  }

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
                FutureBuilder<Quote>(
                  future: futureQuote,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF305CFC).withOpacity(0.2),
                              border: Border.all(
                                  width: 2,
                                  color: Color(0xFF305CFC).withOpacity(0.3)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          width: widthBlock * 80.0,
                          height: heightBlock * 20.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5, right: 5),
                                child: Text(
                                  '"' +
                                      snapshot.data.text +
                                      '"' " - " +
                                      snapshot.data.author,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ));
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }

                    // By default, show a loading spinner.
                    return const CircularProgressIndicator();
                  },
                ),
                //Buttons
                HomePageButtons(
                    color: Color(0xFF476FFF),
                    title: "Lessons",
                    icon: Icons.videocam,
                    heightBlock: heightBlock,
                    widthBlock: widthBlock,
                    page: new VideoPage()),
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
