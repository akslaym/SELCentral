import 'package:flutter/material.dart';

class HomePageHeader extends StatelessWidget {
  double width;
  double height;
  HomePageHeader(this.width, this.height);
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Color(0xFF9FB4FF), boxShadow: [
          BoxShadow(
            color: Colors.grey[700],
            offset: Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 0,
          )
        ]),
        width: width * 100.0,
        height: height * 10.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Home Page",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
