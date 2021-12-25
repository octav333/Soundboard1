import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List cuvinte = [
  "culcat",
  "culcat",
  "culcat",
  "culcat",
  "culcat",
  "culcat",
  "culcat",
  "culcat",
  "culcat"
];
int counter = 0;
List<Color> _c = [
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.blue,
  Colors.blue,
  Colors.blue,
  Colors.green,
  Colors.green,
  Colors.green,
];
List audio = [
  'audio/culcat.mp3',
  'audio/culcat.mp3',
  'audio/culcat.mp3',
  'audio/culcat.mp3',
  'audio/culcat.mp3',
  'audio/culcat.mp3'
];

final player = AudioCache();

List<double> widths = [150, 150, 150, 150, 150, 150, 150, 150, 150];
List<double> heights = [150, 150, 150, 150, 150, 150, 150, 150, 150];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
                crossAxisSpacing: 10),
            itemCount: 9,
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                child: AnimatedContainer(
                  child: Center(child: Text(cuvinte[index])),
                  color: _c[index],
                  duration: const Duration(milliseconds: 300),
                ),
                onTap: () {
                  counter++;
                  if (counter % 2 == 0) {
                    setState(() {
                      _c[index] = Colors.purpleAccent;
                    });
                  } else {
                    setState(() {
                      _c[index] = Colors.tealAccent;
                    });
                  }
                  player.play('audio/culcat.mp3');
                },
              );
            }),
      ),
    );
  }
}
