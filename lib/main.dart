import 'package:IgniteSEL/PasswordPage/PasswordPage.dart';
import 'package:IgniteSEL/LoginPage/LoginPage.dart';
import 'package:IgniteSEL/VideoPage/QuoteFuntions/Fetch.dart';
import 'package:flutter/material.dart';

import 'HomePage/HomePage.dart';
import 'ResourcesPage/ResourcesPage.dart';
import 'VideoPage/QuoteFuntions/Quote.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SELCentral',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
    );
  }
}
