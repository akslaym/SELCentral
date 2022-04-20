import 'package:SELCentral/AccountTypePage/AccountTypePage.dart';
import 'package:SELCentral/LoginPage/LoginPage.dart';
import 'package:flutter/material.dart';

import 'HomePage/HomePage.dart';
import 'ResourcesPage/ResourcesPage.dart';

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
