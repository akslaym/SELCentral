import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new CustomPaint(
            child: Center(
                child: Column(
              children: [
                Container(width: 350, height: 200, color: Colors.blue.shade400),
                SizedBox(height: 30),
                Container(child: Text("Sign-Up", style: TextStyle(fontSize: 50)),),
                SizedBox(height: 40),
                Container(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                    ),
                  ),
                ),
                SizedBox(height: 20),HI
                Container(
                  width: 300,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                ),
                SizedBox(height: 170),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )),
            painter: MyPainter()));
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Colors.blue.shade300;
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();
    //Paint starting at 20% of the height
    ovalPath.moveTo(0, height * 0.2);
    ovalPath.quadraticBezierTo(
        width * 0.5, height * 0.25, width * 0.5, height * 0.5);
    ovalPath.quadraticBezierTo(width * 0.55, height * 0.8, 0, height);
    ovalPath.moveTo(width * 0.8, 0);
    ovalPath.quadraticBezierTo(width * 0.6, height * 0.2, width, height * 0.25);
    ovalPath.quadraticBezierTo(width, 0, width, 0);
    paint.color = Colors.blue.shade500;
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
