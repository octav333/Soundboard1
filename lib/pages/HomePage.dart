import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soundboard/pages/Board.dart';

import 'Favorites.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List pages = [
  Home(),
  Favorites(),
];
int _pageIndex = 0;
PageController _pageController = PageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Soundboard'),
          leading: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                child: Icon(Icons.add),
                onTap: () {},
              );
            },
          )),
      body: PageView(
        onPageChanged: (page) {
          setState(() {
            _pageIndex = page;
          });
        },
        controller: _pageController,
        children: [Home(), Favorites()],
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          unselectedItemColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          selectedLabelStyle: TextStyle(color: Colors.blue),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note), label: 'Board'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favorites'),
          ],
          currentIndex: _pageIndex,
          onTap: (changeindex) {
            setState(() {
              _pageController.jumpToPage(changeindex);
              _pageIndex = changeindex;
            });
          }),
    );
  }
}
