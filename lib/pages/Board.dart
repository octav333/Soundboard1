import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<Color> _c = [
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
  Colors.red,
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
MaterialColor _sbbuttonscolor = Colors.lightBlue;
List<double> widths = [150, 150, 150, 150, 150, 150, 150, 150, 150];
List<double> heights = [150, 150, 150, 150, 150, 150, 150, 150, 150];
double _w = 150;
MaterialColor _color = Colors.red;
List<Widget> Buttons = [
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 11500),
    width: widths[0],
    height: heights[0],
    color: _color,
  ),
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 500),
    width: widths[1],
    height: heights[1],
    color: _c[1],
  ),
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 500),
    width: widths[2],
    height: heights[2],
    color: _c[2],
  ),
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 500),
    width: widths[3],
    height: heights[3],
    color: _c[3],
  ),
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 500),
    width: widths[4],
    height: heights[4],
    color: _c[4],
  ),
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 500),
    width: widths[5],
    height: heights[5],
    color: _c[5],
  ),
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 500),
    width: widths[6],
    height: heights[6],
    color: _c[6],
  ),
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 500),
    width: widths[7],
    height: heights[7],
    color: _c[7],
  ),
  AnimatedContainer(
    child: Center(
      child: Text("culcat"),
    ),
    duration: Duration(milliseconds: 500),
    width: widths[8],
    height: heights[8],
    color: _c[8],
  ),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
              crossAxisSpacing: 10),
          itemCount: Buttons.length,
          itemBuilder: (BuildContext context, index) {
            return InkWell(
              focusColor: Colors.green,
              splashColor: Colors.green,
              child: AnimatedContainer(
                child: Center(child: Text("culcat")),
                width: _w,
                duration: Duration(milliseconds: 500),
                color: _color,
              ),
              hoverColor: Colors.green,
              highlightColor: Colors.green,
              onTap: () {
                player.play('audio/culcat.mp3');
                setState(() {
                  _w = 100;
                });
              },
              onTapDown: (TapDownDetails details) {
                setState(() {
                  _color = Colors.blue;
                });
              },
              onTapCancel: () {
                setState(() {
                  _color = Colors.red;
                });
              },
            );
          }),
    );
  }
}
