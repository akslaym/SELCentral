

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('login'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
          color: Colors.indigoAccent[100],
          width: double.infinity,
          height: double.infinity,


          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              // Text('I am a...'),

              Text('     Login', style: TextStyle(color: Colors.white, fontSize: 35)),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: const BorderRadius.all(const Radius.circular(30.0))
                  ),
                  //color: Colors.indigoAccent,
                  padding: EdgeInsets.all(23.0),
                  margin: EdgeInsets.all(40),
                  height: 60,
                  width: 190,

                  child: Text('Username', style: TextStyle(color : Colors.white70),textAlign: TextAlign.center,)



              ),
              SizedBox(height: 1),

              Container(
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: const BorderRadius.all(const Radius.circular(30.0))
                  ),
                  //color: Colors.green[500],
                  padding: EdgeInsets.all(23.0),
                  margin: EdgeInsets.all(40),
                  height: 60,
                  width: 190,
                  child: Text('Password', style: TextStyle(color : Colors.white70),textAlign: TextAlign.center),
              ),
              //SizedBox(height: 1),
              Text('                       Forgot Password?', style: TextStyle(color: Colors.white70)),


              Container(
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent[100],
                      borderRadius: const BorderRadius.all(const Radius.circular(20.0))
                  ),
                  //color: Colors.pinkAccent[100],
                  padding: EdgeInsets.all(50.0),
                  child: Text('Login', style: TextStyle(color : Colors.white)),
              ),
            ],
          ),

        ),
    );
  }
}

