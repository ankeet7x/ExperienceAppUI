import 'package:flutter/material.dart';

import 'chat.dart';
import 'mainhome.dart';
import 'maps.dart';
import 'user.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    Home(),
    Maps(),
    Chat(),
    User(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[10],
        selectedItemColor: Colors.orange,
        onTap: onItemTapped,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                // color: Colors.grey,
              ),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                size: 30,
                // color: Colors.grey,
              ),
              title: Text(
                "Map",
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                size: 30,
                // color: Colors.grey,
              ),
              title: Text("Chat")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 30,
                // color: Colors.grey,
              ),
              title: Text("User")),
        ],
      ),
    );
  }
}
