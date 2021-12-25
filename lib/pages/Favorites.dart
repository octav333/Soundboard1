import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

List<double> _h = [200, 150];
List<double> _w = [200, 150];
List<Color> _c = [Colors.red, Colors.green];
MaterialColor _color = Colors.red;
double _wi = 100;
Timer _timer = Timer(Duration(milliseconds: 200), callback());
callback() {
  print('culcat');
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.countBuilder(
      crossAxisCount: 4,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () {
          setState(() {
            _wi = 30;
            _color = Colors.blue;
          });
        },
        child: AnimatedContainer(
          width: _wi,
          duration: Duration(milliseconds: 300),
          child: Text('caca'),
          color: _color,
        ),
      ),
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(2, index.isEven ? 2 : 1),
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    ));
  }
}
