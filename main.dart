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

       //Text('I am a...', style: TextStyle(fontSize: 35)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

           // Text('I am a...'),
            //Text('I am a...', style: TextStyle(fontSize: 35)),
            SizedBox(width: 10),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                  borderRadius: const BorderRadius.all(const Radius.circular(20.0))
                ),
                //color: Colors.indigoAccent,
                padding: EdgeInsets.all(35.0),
                //margin: EdgeInsets.all(70),
                width: 35,
                height: 130,
                child: Text('Student', style: TextStyle(color : Colors.white,fontSize: 18), textAlign: TextAlign.center),


              ),
            ),
            SizedBox(width: 10),

            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green[500],
                      borderRadius: const BorderRadius.all(const Radius.circular(20.0))
                  ),
                  //color: Colors.green[500],
                  padding: EdgeInsets.all(35.0),
                  width: 35,
                  height: 130,
                  child: Text('Teacher', style: TextStyle(color : Colors.white, fontSize: 18),textAlign: TextAlign.center,)
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent[100],
                      borderRadius: const BorderRadius.all(const Radius.circular(20.0))
                  ),
                  //color: Colors.pinkAccent[100],
                  padding: EdgeInsets.all(35.0),
                  width: 35,
                  height: 130,
                  child: Text('New Account', style: TextStyle(color : Colors.white, fontSize: 18),textAlign: TextAlign.center),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),

      ),


  );
    }
}

