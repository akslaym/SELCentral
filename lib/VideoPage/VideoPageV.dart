import 'package:flutter/material.dart';

class MyHeadingWidget extends StatelessWidget {
  const MyHeadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35.0),
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.topCenter,
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.lightGreenAccent.shade700,
        border: Border.all(),
      ),
      child: const Text(
        "What Would You Like To Learn About Today?",
        style: TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class VideoPageV extends StatelessWidget {
  const VideoPageV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3D5AFE),
        body: Center(
            child: Column(children: const [
          MyHeadingWidget(),
        ])));
  }
}
