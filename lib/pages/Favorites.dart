import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

List<double> _h = [200, 150];
List<double> _w = [200, 150];
List<Color> _c = [Colors.red, Colors.green];

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, index) {
              return AnimatedContainer(
                color: _c[index],
                width: _w[index],
                height: _h[index],
                duration: Duration(milliseconds: 300),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _h[index] = 100;
                              _w[index] = 100;
                              _c[index] = Colors.blue;
                            });
                          },
                          child: Text('da')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _h[index] = 150;
                              _w[index] = 150;
                              _c[index] = Colors.red;
                            });
                          },
                          child: Text('nu')),
                    ],
                  ),
                ),
              );
            }
            //   Container(
            //  color: Colors.red,
            // child: Center(
            // child: ElevatedButton(
            //  onPressed: () {},
            //  child: Text('buton'),
            //   ),
            // ),
            //  ),
            ));
  }
}
