import 'package:flutter/material.dart';
import 'video_screen.dart';

class MyHeadingWidget extends StatelessWidget {
  const MyHeadingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
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

class Concept {
  final String title;
  final String firstLink;
  final String secondLink;
  final String thirdLink;
  final String fourthLink;
  final String fifthLink;
  final String sixthLink;

  Concept(this.title, this.firstLink, this.secondLink, this.thirdLink,
      this.fourthLink, this.fifthLink, this.sixthLink);
}

List<Concept> concepts = [
  Concept(
    'Cooperation',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Empathy',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Empowerment',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Fairness',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Forgiveness',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Friendship',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Generational Love',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Generosity',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Gratitude',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Honesty',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Joy',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Kindness',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Peaceful Problem-Solving',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Perseverance',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Planet Earth',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Positivity',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Self Care',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
  Concept(
    'Social Justice',
    'first link',
    'second link',
    'third link',
    'fourth link',
    'fifth link',
    'sixth link',
  ),
];

class MyListWidget extends StatelessWidget {
  const MyListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: concepts.length,
            itemBuilder: (context, index) {
              return ExpansionTile(
                  title: Text(
                    concepts[index].title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.pink.shade200,
                    size: 40.0,
                  ),
                  children: [
                    SizedBox(
                        height: 130,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                            //      Navigator.push(context, MaterialPageRoute(
                            //          builder: (context) =>
                            //              MyVideoPlayer(
                            //                  concepts[index].firstLink))
                            //      );
                                },
                                child: Text('Kindergarten',
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(150.0, 125.0),
                                    primary: Colors.grey)),
                            const SizedBox(width: 15),
                            ElevatedButton(
                                onPressed: () {
                                  //      Navigator.push(context, MaterialPageRoute(
                                  //          builder: (context) =>
                                  //              MyVideoPlayer(
                                  //                  concepts[index].secondLink))
                                  //      );
                                },
                                child: const Text('1st Grade',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(150.0, 125.0),
                                    primary: Colors.grey)),
                            const SizedBox(width: 15),
                            ElevatedButton(
                                onPressed: () {
                                  //      Navigator.push(context, MaterialPageRoute(
                                  //          builder: (context) =>
                                  //              MyVideoPlayer(
                                  //                  concepts[index].thirdLink))
                                  //      );
                                },
                                child: const Text('2nd Grade',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(150.0, 125.0),
                                    primary: Colors.grey)),
                            const SizedBox(width: 15),
                            ElevatedButton(
                                onPressed: () {
                                  //      Navigator.push(context, MaterialPageRoute(
                                  //          builder: (context) =>
                                  //              MyVideoPlayer(
                                  //                  concepts[index].fourthLink))
                                  //      );
                                },
                                child: const Text('3rd Grade',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(150.0, 125.0),
                                    primary: Colors.grey)),
                            const SizedBox(width: 15),
                            ElevatedButton(
                                onPressed: () {
                                  //      Navigator.push(context, MaterialPageRoute(
                                  //          builder: (context) =>
                                  //              MyVideoPlayer(
                                  //                  concepts[index].fifthLink))
                                  //      );
                                },
                                child: const Text('4th Grade',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(150.0, 125.0),
                                    primary: Colors.grey)),
                            const SizedBox(width: 15),
                            ElevatedButton(
                                onPressed: () {
                                  //      Navigator.push(context, MaterialPageRoute(
                                  //          builder: (context) =>
                                  //              MyVideoPlayer(
                                  //                  concepts[index].sixthLink))
                                  //      );
                                },
                                child: const Text('5th Grade',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(150.0, 125.0),
                                    primary: Colors.grey)),
                          ],
                        )),
                  ]);
            }));
  }
}

class VideoPageV extends StatelessWidget {
  const VideoPageV({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3D5AFE),
        body: Center(
            child: Column(children: const [
              MyHeadingWidget(),
              MyListWidget(),
            ])));
  }
}
