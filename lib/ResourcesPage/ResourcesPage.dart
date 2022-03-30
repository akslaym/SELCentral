import 'package:flutter/material.dart';
import 'InformationPage.dart';

class MyTitleWidget extends StatelessWidget {
  const MyTitleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35.0),
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
      margin: const EdgeInsets.only(top: 20.0),
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

class Question {
  final String title;
  final String descriptions;
  final String url;

  Question(this.title, this.descriptions, this.url);
}

List<Question> questions = [
  Question(
      "What is SEL Central?", "description goes here", "image url goes here"),
  Question("What is CASEL?", "description goes here", "image url goes here"),
  Question("What is SEL?", "description goes here", "image url goes here"),
  Question("What is the mission of SEL Central?", "description goes here",
      "image url goes here"),
];

class MyQuestionsWidget extends StatelessWidget {
  const MyQuestionsWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      padding: const EdgeInsets.all(0.0),
      itemCount: questions.length,
      itemBuilder: (context, index) {
        return Column(children: [
          ListTile(
            title: Text(questions[index].title,
                style: const TextStyle(color: Colors.white, fontSize: 17.0)),
            trailing: const Icon(Icons.arrow_drop_down,
                color: Colors.lightBlueAccent, size: 40.0),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InformationScreen(questions[index].title, questions[index].descriptions, questions[index].url)));
            },
          ),
          const Divider(color: Colors.lightBlueAccent),
        ]);
      },
    ));
  }
}

class MyBackButtonWidget extends StatelessWidget {
  const MyBackButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton.icon(
          onPressed: () {},
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
          MyTitleWidget(),
          MyFAQWidget(),
          Divider(color: Colors.lightBlueAccent),
          MyQuestionsWidget(),
          MyBackButtonWidget(),
        ]),
      ),
    );
  }
}
