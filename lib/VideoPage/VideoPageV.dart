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
          color: Colors.lightBlueAccent,
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
    'https://www.youtube.com/watch?v=dFg7aLKP28U&list=PLJFHaMuODeN__wdQQbdUD55SONf3DXByP&index=1',
    'https://www.youtube.com/watch?v=hMQslb7HiM0&list=PLJFHaMuODeN__wdQQbdUD55SONf3DXByP&index=6',
    'https://www.youtube.com/watch?v=qwyR9WkvD0w&list=PLJFHaMuODeN__wdQQbdUD55SONf3DXByP&index=5',
    'https://www.youtube.com/watch?v=VNHHtfb69Ho&list=PLJFHaMuODeN__wdQQbdUD55SONf3DXByP&index=4',
    'https://www.youtube.com/watch?v=ugRYuAGGMmg&list=PLJFHaMuODeN__wdQQbdUD55SONf3DXByP&index=3',
    'https://www.youtube.com/watch?v=mfwrgfMNn0A&list=PLJFHaMuODeN__wdQQbdUD55SONf3DXByP&index=2',
  ),
  Concept(
    'Empowerment',
    'https://www.youtube.com/watch?v=gOxc8pVOiAU&list=PLJFHaMuODeN-xz2GqLgLuT-a6wrR4r88z&index=2',
    'https://www.youtube.com/watch?v=6W_Wav73J10&list=PLJFHaMuODeN-xz2GqLgLuT-a6wrR4r88z&index=6',
    'https://www.youtube.com/watch?v=Zz2UmcfTvoo&list=PLJFHaMuODeN-xz2GqLgLuT-a6wrR4r88z&index=5',
    'https://www.youtube.com/watch?v=BqjdaGFHjQc&list=PLJFHaMuODeN-xz2GqLgLuT-a6wrR4r88z&index=4',
    'https://www.youtube.com/watch?v=lOnl11aUvdI&list=PLJFHaMuODeN-xz2GqLgLuT-a6wrR4r88z&index=3',
    'https://www.youtube.com/watch?v=0_ib3YI70_o&list=PLJFHaMuODeN-xz2GqLgLuT-a6wrR4r88z&index=1',
  ),
  Concept(
    'Fairness',
    'https://www.youtube.com/watch?v=XgsUSzwO86c&list=PLJFHaMuODeN9hX29B3XuFr5wM7o1VX060&index=6',
    'https://www.youtube.com/watch?v=9j5wCfw7BcI&list=PLJFHaMuODeN9hX29B3XuFr5wM7o1VX060&index=1',
    'https://www.youtube.com/watch?v=AVODPbQ1QP4&list=PLJFHaMuODeN9hX29B3XuFr5wM7o1VX060&index=2',
    'https://www.youtube.com/watch?v=LgvVPHyGAFI&list=PLJFHaMuODeN9hX29B3XuFr5wM7o1VX060&index=3',
    'https://www.youtube.com/watch?v=yTSOLP7w9Lk&list=PLJFHaMuODeN9hX29B3XuFr5wM7o1VX060&index=4',
    'https://www.youtube.com/watch?v=x1Y8pBoH2eY&list=PLJFHaMuODeN9hX29B3XuFr5wM7o1VX060&index=5',
  ),
  Concept(
    'Forgiveness',
    'https://www.youtube.com/watch?v=jup-TYMqS_8&list=PLJFHaMuODeN95t6VZZ6gpGW3dBy-1sM9e&index=1',
    'https://www.youtube.com/watch?v=rhsPjn08tUQ&list=PLJFHaMuODeN95t6VZZ6gpGW3dBy-1sM9e&index=2',
    'https://www.youtube.com/watch?v=cRsGCV7fI60&list=PLJFHaMuODeN95t6VZZ6gpGW3dBy-1sM9e&index=3',
    'https://www.youtube.com/watch?v=tSmW4BhmjRo&list=PLJFHaMuODeN95t6VZZ6gpGW3dBy-1sM9e&index=4',
    'https://www.youtube.com/watch?v=ZWOL1logd24&list=PLJFHaMuODeN95t6VZZ6gpGW3dBy-1sM9e&index=5',
    'https://www.youtube.com/watch?v=9jPSJRJfJpw&list=PLJFHaMuODeN95t6VZZ6gpGW3dBy-1sM9e&index=6',
  ),
  Concept(
    'Friendship',
    'https://www.youtube.com/watch?v=U9nNGmigaj0&list=PLJFHaMuODeN-mrQeaCqWREEzHsT4QdInm&index=6',
    'https://www.youtube.com/watch?v=ets7_g05Rh8&list=PLJFHaMuODeN-mrQeaCqWREEzHsT4QdInm&index=1',
    'https://www.youtube.com/watch?v=Da9_-MpOfvs&list=PLJFHaMuODeN-mrQeaCqWREEzHsT4QdInm&index=2',
    'https://www.youtube.com/watch?v=3RtdBdsZBNI&list=PLJFHaMuODeN-mrQeaCqWREEzHsT4QdInm&index=3',
    'https://www.youtube.com/watch?v=JzBG-_HzDJg&list=PLJFHaMuODeN-mrQeaCqWREEzHsT4QdInm&index=4',
    'https://www.youtube.com/watch?v=Ljiobpdy8bA&list=PLJFHaMuODeN-mrQeaCqWREEzHsT4QdInm&index=5',
  ),
  Concept(
    'Generational Love',
    'https://www.youtube.com/watch?v=3WXFiEjGurc&list=PLJFHaMuODeN_kwmLMheezr7ib5MhcpKKw&index=6',
    'https://www.youtube.com/watch?v=eKyKGnSUD7U&list=PLJFHaMuODeN_kwmLMheezr7ib5MhcpKKw&index=1',
    'https://www.youtube.com/watch?v=F1OrRkdZRdI&list=PLJFHaMuODeN_kwmLMheezr7ib5MhcpKKw&index=2',
    'https://www.youtube.com/watch?v=c5AWnsMIAa0&list=PLJFHaMuODeN_kwmLMheezr7ib5MhcpKKw&index=3',
    'https://www.youtube.com/watch?v=MjXr3HXLbqU&list=PLJFHaMuODeN_kwmLMheezr7ib5MhcpKKw&index=4',
    'https://www.youtube.com/watch?v=RcOVy7wWdWM&list=PLJFHaMuODeN_kwmLMheezr7ib5MhcpKKw&index=5',
  ),
  Concept(
    'Generosity',
    'https://www.youtube.com/watch?v=zY5w3t8ToPM&list=PLJFHaMuODeN9fyVe19nimUsbOWIbebAeJ&index=1',
    'https://www.youtube.com/watch?v=8bbFZlCbdMY&list=PLJFHaMuODeN9fyVe19nimUsbOWIbebAeJ&index=6',
    'https://www.youtube.com/watch?v=i3EHy1Zu4vE&list=PLJFHaMuODeN9fyVe19nimUsbOWIbebAeJ&index=5',
    'https://www.youtube.com/watch?v=gtOzLyV8ip8&list=PLJFHaMuODeN9fyVe19nimUsbOWIbebAeJ&index=4',
    'https://www.youtube.com/watch?v=rELpuzr_Qu8&list=PLJFHaMuODeN9fyVe19nimUsbOWIbebAeJ&index=3',
    'https://www.youtube.com/watch?v=_lrgqs6y5kY&list=PLJFHaMuODeN9fyVe19nimUsbOWIbebAeJ&index=2',
  ),
  Concept(
    'Gratitude',
    'https://www.youtube.com/watch?v=KSoDab2wdYA&list=PLJFHaMuODeN-lfMHy8FHeaobj0RVnsn36&index=6',
    'https://www.youtube.com/watch?v=p8LNlx9CRj4&list=PLJFHaMuODeN-lfMHy8FHeaobj0RVnsn36&index=1',
    'https://www.youtube.com/watch?v=xICSpSvqOMY&list=PLJFHaMuODeN-lfMHy8FHeaobj0RVnsn36&index=2',
    'https://www.youtube.com/watch?v=E2fELJpXJTM&list=PLJFHaMuODeN-lfMHy8FHeaobj0RVnsn36&index=3',
    'https://www.youtube.com/watch?v=ta36EvaecYs&list=PLJFHaMuODeN-lfMHy8FHeaobj0RVnsn36&index=4',
    'https://www.youtube.com/watch?v=xPsi45g0BDI&list=PLJFHaMuODeN-lfMHy8FHeaobj0RVnsn36&index=5',
  ),
  Concept(
    'Honesty',
    'https://www.youtube.com/watch?v=ZJZLJEUPZb4&list=PLJFHaMuODeN_lAIGZtzVGkYXfYQT12Krg&index=1',
    'https://www.youtube.com/watch?v=jMjiXHTVMF4&list=PLJFHaMuODeN_lAIGZtzVGkYXfYQT12Krg&index=6',
    'https://www.youtube.com/watch?v=rA3KYeNZyVA&list=PLJFHaMuODeN_lAIGZtzVGkYXfYQT12Krg&index=5',
    'https://www.youtube.com/watch?v=VJYdojUAZas&list=PLJFHaMuODeN_lAIGZtzVGkYXfYQT12Krg&index=4',
    'https://www.youtube.com/watch?v=-xXdl0MUa2Q&list=PLJFHaMuODeN_lAIGZtzVGkYXfYQT12Krg&index=3',
    'https://www.youtube.com/watch?v=JTKkwGrRxog&list=PLJFHaMuODeN_lAIGZtzVGkYXfYQT12Krg&index=2',
  ),
  Concept(
    'Joy',
    'https://www.youtube.com/watch?v=C63a9hkIwf0&list=PLJFHaMuODeN_dsOF9bqcLjoOqPYhnZ4o-&index=6',
    'https://www.youtube.com/watch?v=SNqe2vnJJ8E&list=PLJFHaMuODeN_dsOF9bqcLjoOqPYhnZ4o-&index=1',
    'https://www.youtube.com/watch?v=sAd_D7zVWY0&list=PLJFHaMuODeN_dsOF9bqcLjoOqPYhnZ4o-&index=2',
    'https://www.youtube.com/watch?v=7Cs0AweP15E&list=PLJFHaMuODeN_dsOF9bqcLjoOqPYhnZ4o-&index=3',
    'https://www.youtube.com/watch?v=otul1iq7Ykk&list=PLJFHaMuODeN_dsOF9bqcLjoOqPYhnZ4o-&index=4',
    'https://www.youtube.com/watch?v=0Wp2GmHONIM&list=PLJFHaMuODeN_dsOF9bqcLjoOqPYhnZ4o-&index=5',
  ),
  Concept(
    'Kindness',
    'https://www.youtube.com/watch?v=6fp18Imxykc&list=PLJFHaMuODeN-Z74FK-Ar8sBPU9GAxiFSF&index=6',
    'https://www.youtube.com/watch?v=6iLzYRFsvfU&list=PLJFHaMuODeN-Z74FK-Ar8sBPU9GAxiFSF&index=1',
    'https://www.youtube.com/watch?v=oX36AJD4j5M&list=PLJFHaMuODeN-Z74FK-Ar8sBPU9GAxiFSF&index=2',
    'https://www.youtube.com/watch?v=m-cp_erJYTY&list=PLJFHaMuODeN-Z74FK-Ar8sBPU9GAxiFSF&index=3',
    'https://www.youtube.com/watch?v=lE5dKjBe3H4&list=PLJFHaMuODeN-Z74FK-Ar8sBPU9GAxiFSF&index=4',
    'https://www.youtube.com/watch?v=WM83C9UrMFg&list=PLJFHaMuODeN-Z74FK-Ar8sBPU9GAxiFSF&index=5',
  ),
  Concept(
    'Peaceful Problem-Solving',
    'https://www.youtube.com/watch?v=c0XcSmV-3zI&list=PLJFHaMuODeN-evA8JzM5GDTQztUSFE-pg&index=6',
    'https://www.youtube.com/watch?v=YweoZ6_d-nU&list=PLJFHaMuODeN-evA8JzM5GDTQztUSFE-pg&index=1',
    'https://www.youtube.com/watch?v=X7_0rIuuKrY&list=PLJFHaMuODeN-evA8JzM5GDTQztUSFE-pg&index=2',
    'https://www.youtube.com/watch?v=96BngVlgUps&list=PLJFHaMuODeN-evA8JzM5GDTQztUSFE-pg&index=3',
    'https://www.youtube.com/watch?v=XwtJ5-NRRXk&list=PLJFHaMuODeN-evA8JzM5GDTQztUSFE-pg&index=4',
    'https://www.youtube.com/watch?v=uj5KnJ1e2kY&list=PLJFHaMuODeN-evA8JzM5GDTQztUSFE-pg&index=5',
  ),
  Concept(
    'Perseverance',
    'https://www.youtube.com/watch?v=wG4TonrLh70&list=PLJFHaMuODeN-qZkNlS5B6vWpgFbo_3wQj&index=5',
    'https://www.youtube.com/watch?v=BSOP5jrN81w&list=PLJFHaMuODeN-qZkNlS5B6vWpgFbo_3wQj&index=1',
    'https://www.youtube.com/watch?v=BSOP5jrN81w&list=PLJFHaMuODeN-qZkNlS5B6vWpgFbo_3wQj&index=1',
    'https://www.youtube.com/watch?v=vW1gujAvE7o&list=PLJFHaMuODeN-qZkNlS5B6vWpgFbo_3wQj&index=2',
    'https://www.youtube.com/watch?v=l2UnJSTTz4E&list=PLJFHaMuODeN-qZkNlS5B6vWpgFbo_3wQj&index=3',
    'https://www.youtube.com/watch?v=gZJ1HZFF8W0&list=PLJFHaMuODeN-qZkNlS5B6vWpgFbo_3wQj&index=4',
  ),
  Concept(
    'Planet Earth',
    'https://www.youtube.com/watch?v=OEa7PraYwLc&list=PLJFHaMuODeN-SnyatTvRNJJ2Zx9ZDJD7R&index=6',
    'https://www.youtube.com/watch?v=44Otal2xsEQ&list=PLJFHaMuODeN-SnyatTvRNJJ2Zx9ZDJD7R&index=1',
    'https://www.youtube.com/watch?v=ivqqOTjcsHE&list=PLJFHaMuODeN-SnyatTvRNJJ2Zx9ZDJD7R&index=2',
    'https://www.youtube.com/watch?v=VdzfW3VwDwQ&list=PLJFHaMuODeN-SnyatTvRNJJ2Zx9ZDJD7R&index=3',
    'https://www.youtube.com/watch?v=QHkF32FjycU&list=PLJFHaMuODeN-SnyatTvRNJJ2Zx9ZDJD7R&index=4',
    'https://www.youtube.com/watch?v=Hd3gQODU85s&list=PLJFHaMuODeN-SnyatTvRNJJ2Zx9ZDJD7R&index=5',
  ),
  Concept(
    'Positivity',
    'https://www.youtube.com/watch?v=GAXGsZ3SiSU&list=PLJFHaMuODeN__0Ms41ZXTMQdL8EICDTQG&index=6',
    'https://www.youtube.com/watch?v=X24OQwkbtAY&list=PLJFHaMuODeN__0Ms41ZXTMQdL8EICDTQG&index=1',
    'https://www.youtube.com/watch?v=j6gm88IJfMU&list=PLJFHaMuODeN__0Ms41ZXTMQdL8EICDTQG&index=2',
    'https://www.youtube.com/watch?v=G56RhHYJMuM&list=PLJFHaMuODeN__0Ms41ZXTMQdL8EICDTQG&index=3',
    'https://www.youtube.com/watch?v=hh9zhIdLD4Q&list=PLJFHaMuODeN__0Ms41ZXTMQdL8EICDTQG&index=4',
    'https://www.youtube.com/watch?v=0c4-ndHYwco&list=PLJFHaMuODeN__0Ms41ZXTMQdL8EICDTQG&index=5',
  ),
  Concept(
    'Self Care',
    'https://www.youtube.com/watch?v=G48UZhBoGM0&list=PLJFHaMuODeN925yUqUy9ju-pzqjTEvenY&index=1',
    'https://www.youtube.com/watch?v=fD7g-BmW5q8&list=PLJFHaMuODeN925yUqUy9ju-pzqjTEvenY&index=6',
    'https://www.youtube.com/watch?v=nTxnymm5ZTU&list=PLJFHaMuODeN925yUqUy9ju-pzqjTEvenY&index=5',
    'https://www.youtube.com/watch?v=7r4NWd2qbBk&list=PLJFHaMuODeN925yUqUy9ju-pzqjTEvenY&index=4',
    'https://www.youtube.com/watch?v=pfk6aloUIo8&list=PLJFHaMuODeN925yUqUy9ju-pzqjTEvenY&index=3',
    'https://www.youtube.com/watch?v=uWiuV1AYRpU&list=PLJFHaMuODeN925yUqUy9ju-pzqjTEvenY&index=2',
  ),
  Concept(
    'Social Justice',
    'https://www.youtube.com/watch?v=rAYoxgkRajo&list=PLJFHaMuODeN-DwZr92kGukYMxIgEwJ7bF&index=1',
    'https://www.youtube.com/watch?v=SK-rXDgK_Rg&list=PLJFHaMuODeN-DwZr92kGukYMxIgEwJ7bF&index=6',
    'https://www.youtube.com/watch?v=8cVk59XHzmA&list=PLJFHaMuODeN-DwZr92kGukYMxIgEwJ7bF&index=5',
    'https://www.youtube.com/watch?v=JrQOs2nXNWU&list=PLJFHaMuODeN-DwZr92kGukYMxIgEwJ7bF&index=4',
    'https://www.youtube.com/watch?v=TeJuj3Hbzt8&list=PLJFHaMuODeN-DwZr92kGukYMxIgEwJ7bF&index=3',
    'https://www.youtube.com/watch?v=R6MNJaH4Z3s&list=PLJFHaMuODeN-DwZr92kGukYMxIgEwJ7bF&index=2',
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
