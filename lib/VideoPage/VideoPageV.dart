import 'package:SELCentral/ResourcesPage/ResourcesPage.dart';
import 'package:flutter/material.dart';
import 'video_screen.dart';

class MyHeadingWidget extends StatelessWidget {
  const MyHeadingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      MyBackButtonWidget(),
      Container(
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.topCenter,
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.lightGreenAccent.shade700,
          border: Border.all(),
        ),
        child: const Text(
          "What Would You Like To Learn About Today?",
          style: TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
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
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Empathy',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Empowerment',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Fairness',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Forgiveness',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Friendship',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Generational Love',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Generosity',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Gratitude',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Honesty',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Joy',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Kindness',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Peaceful Problem-Solving',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Perseverance',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Planet Earth',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Positivity',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Self Care',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
  Concept(
    'Social Justice',
    'https://www.youtube.com/watch?v=gETDLbzK9I8&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=1',
    'https://www.youtube.com/watch?v=D61r3uz2nXU&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=6',
    'https://www.youtube.com/watch?v=Z-pb0He-p5o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=5',
    'https://www.youtube.com/watch?v=k-uR_Nqz04o&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=4',
    'https://www.youtube.com/watch?v=g4-FRCyr7Ns&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=3',
    'https://www.youtube.com/watch?v=_V64uIOdIeQ&list=PLJFHaMuODeN8HV6veP8uQ1cLrYEwjtP9_&index=2',
  ),
];

class MyListWidget extends StatelessWidget {
  const MyListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            padding: const EdgeInsets.all(0.0),
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyVideoPlayer(
                                              concepts[index].firstLink)));
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyVideoPlayer(
                                              concepts[index].secondLink)));
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyVideoPlayer(
                                              concepts[index].thirdLink)));
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyVideoPlayer(
                                              concepts[index].fourthLink)));
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyVideoPlayer(
                                              concepts[index].fifthLink)));
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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyVideoPlayer(
                                              concepts[index].sixthLink)));
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
