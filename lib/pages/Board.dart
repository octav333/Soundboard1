import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

Color _red = Colors.red;
Color _blue = Colors.blue;
Color _green = Colors.green;
Color _auxcolor = Colors.red;
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
                  setState(() {
                    _c[index] = Colors.cyanAccent;
                  });
                  Timer.periodic(Duration(seconds: 2), (timer) {
                    setState(() {
                      if (index == 0 || index == 1 || index == 2) {
                        _c[index] = _red;
                      }
                      ;
                      if (index == 3 || index == 4 || index == 5) {
                        _c[index] = _blue;
                      }
                      if (index == 6 || index == 7 || index == 8) {
                        _c[index] = _green;
                      }
                    });
                  });
                  player.play('audio/culcat.mp3');
                },
              );
            }),
      ),
    );
  }
}
