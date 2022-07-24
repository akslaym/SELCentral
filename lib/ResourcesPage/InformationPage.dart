import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  final String heading;
  final String description;

  const InformationScreen(this.heading, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3D5AFE),
        body: Center(
            child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            width: double.infinity,
            height: 155,
            decoration: const BoxDecoration(
              color: Color(0xFF3D5AFE),
            ),
            child: Text(
              heading,
              style: const TextStyle(fontSize: 35, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
              child: Center(
                  child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 30.0),
                  child: Text(
                    description,
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ])))),
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

class BulletPointScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3D5AFE),
        body: Center(
            child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.all(10.0),
            alignment: Alignment.center,
            width: double.infinity,
            height: 155,
            decoration: const BoxDecoration(
              color: Color(0xFF3D5AFE),
            ),
            child: Text(
              "What skills are taught by the IGNITE curriculum?",
              style: const TextStyle(fontSize: 35, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.eschoolnews.com/files/2021/02/CASEL-Logo.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Expanded(
              child: Center(
                  child: ListView(
            padding: EdgeInsets.all(5.0),
            children: [
              ListTile(
                leading: Text(
                  "RELATIONSHIP SKILLS",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Kindness",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Friendship",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Generational Love",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Fairness",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Honesty",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Gratitude",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "SELF-MANAGEMENT",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Compassion/Empathy",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Hard Work/Perseverance/Resilience",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Respect/Manners",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "SOCIAL AWARENESS",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Social Justice/Diversity",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Generosity/Selfless Giving",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Peaceful Problem Solving",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Teamwork/Cooperation",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "SELF-AWARENESS",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Positivity",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Joy",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Self-Care/Physical/Mental Well-Being",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Empowerment/Self Esteem",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "RESPONSIBLE DECISION MAKING",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Our Planet Earth",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Forgiveness",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
              ListTile(
                leading: Text(
                  "•",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                title: Text(
                  "Responsibility",
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
            ],
          ))),
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
