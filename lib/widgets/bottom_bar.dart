import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text('Search')),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle), title: Text('')),
        BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chat')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), title: Text('Me')),
      ],
      currentIndex: 0,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
    );
  }
}
