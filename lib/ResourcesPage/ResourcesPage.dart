import 'package:flutter/material.dart';
import 'InformationPage.dart';

class MyTitleWidget extends StatelessWidget {
  const MyTitleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      alignment: Alignment.center,
      width: double.infinity,
      height: 90,
      decoration: const BoxDecoration(
        color: Colors.lightBlueAccent,
      ),
      child: const Text(
        "Resources",
        style: TextStyle(fontSize: 27, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class MyFAQWidget extends StatelessWidget {
  const MyFAQWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5.0),
      padding: const EdgeInsets.all(15.0),
      alignment: Alignment.bottomLeft,
      width: double.infinity,
      height: 90,
      decoration: const BoxDecoration(
        color: Color(0xFF3D5AFE),
      ),
      child: const Text(
        "FAQ:",
        style: TextStyle(fontSize: 35, color: Colors.white),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class MyQuestionsWidget extends StatelessWidget {
  const MyQuestionsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Divider(color: Colors.lightBlueAccent),
            ListTile(
              title: Text(
                "What is SEL Central?",
                style: const TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              trailing: const Icon(Icons.arrow_right,
                  color: Colors.lightBlueAccent, size: 40.0),
              contentPadding: const EdgeInsets.all(15.0),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InformationScreen(
                            "What is SEL Central?",
                            "SEL Central is an app that allows educators to easily access and display the video lessons from SPARK Positivity’s IGNITE curriculum.")));
              },
            ),
            Divider(color: Colors.lightBlueAccent),
            ListTile(
              title: Text(
                "What is CASEL?",
                style: const TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              trailing: const Icon(Icons.arrow_right,
                  color: Colors.lightBlueAccent, size: 40.0),
              contentPadding: const EdgeInsets.all(15.0),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InformationScreen(
                            "What is CASEL?",
                            "CASEL is an acronym standing for the Collaborative for Academic, Social, and Emotional Learning. CASEL’s framework for social-emotional learning is widely used in American schools. SPARK Positivity’s IGNITE curriculum teaches the core competencies that CASEL developed.")));
              },
            ),
            Divider(color: Colors.lightBlueAccent),
            ListTile(
              title: Text(
                "What is SEL?",
                style: const TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              trailing: const Icon(Icons.arrow_right,
                  color: Colors.lightBlueAccent, size: 40.0),
              contentPadding: const EdgeInsets.all(15.0),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InformationScreen("What is SEL?",
                            "Social-emotional learning, or SEL for short, is a form of education in which social and emotional skills are taught.")));
              },
            ),
            Divider(color: Colors.lightBlueAccent),
            ListTile(
              title: Text(
                "Who created the IGNITE video curriculum?",
                style: const TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              trailing: const Icon(Icons.arrow_right,
                  color: Colors.lightBlueAccent, size: 40.0),
              contentPadding: const EdgeInsets.all(15.0),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InformationScreen(
                            "Who created the IGNITE video curriculum?",
                            "The scripts for the videos were written by Miss Sneha Selvaraj, Miss Amuda Balu, Mr. Jack Cenovic, Miss Riley Hawkins, and Mr. Akshay Mehta. The featured actors in the videos include Miss Tori Dunston, Miss Michaela Foster, Mr. Akshay Mehta, and Miss Madeleine Rheinheimer. The IGNITE SEL app was developed by Mr. Akshay Mehta, Miss Trishna Srikumar, and Mr. Jack Cenovic.")));
              },
            ),
            Divider(color: Colors.lightBlueAccent),
            ListTile(
              title: Text(
                "What makes the IGNITE OUR FUTURE curriculum unique?",
                style: const TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              trailing: const Icon(Icons.arrow_right,
                  color: Colors.lightBlueAccent, size: 40.0),
              contentPadding: const EdgeInsets.all(15.0),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InformationScreen(
                            "What makes the IGNITE OUR FUTURE curriculum unique?",
                            "Our teaching philosophy is unique in that the IGNITE program is designed to be delivered by the guidance counselor and subsequently reinforced by teacher lessons and activities as well as the opportunity for independent learning by student lesson and activities. This is a three-pronged approach which will prove to be most effective.")));
              },
            ),
            Divider(color: Colors.lightBlueAccent),
            ListTile(
              title: Text(
                "What skills are taught by the IGNITE curriculum?",
                style: const TextStyle(color: Colors.white, fontSize: 17.0),
              ),
              trailing: const Icon(Icons.arrow_right,
                  color: Colors.lightBlueAccent, size: 40.0),
              contentPadding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BulletPointScreen()));
              },
            ),
            Divider(color: Colors.lightBlueAccent),
          ],
        ),
      ),
    );
  }
}

class MyBackButtonWidget extends StatelessWidget {
  const MyBackButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.reply_outlined,
            size: 24.0,
            color: Colors.white,
          ),
          label: const Text('Back',
              style: TextStyle(fontSize: 16.0, color: Colors.white)),
          style: ElevatedButton.styleFrom(
              elevation: 0, primary: Colors.transparent),
        ));
  }
}

class ResourcesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3D5AFE),
      body: Center(
        child: Column(children: const [
          MyBackButtonWidget(),
          MyTitleWidget(),
          MyFAQWidget(),
          MyQuestionsWidget(),
        ]),
      ),
    );
  }
}
