import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  final String heading;
  final String description;
  final String imageURL;

  const InformationScreen(this.heading, this.description, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3D5AFE),
        body: Center(
            child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 15.0),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: Color(0xFF3D5AFE),
            ),
            child: Text(
              heading,
              style: const TextStyle(fontSize: 35, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Flexible(
              child: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
                  child: Text(
                    description,
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network(imageURL))
              ]))),
          Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.reply_outlined,
                    size: 24.0, color: Colors.white),
                label: const Text('Back',
                    style: TextStyle(color: Colors.white, fontSize: 16.0)),
                style: ElevatedButton.styleFrom(
                    elevation: 0, primary: Colors.transparent),
              )),
        ])));
  }
}
