import 'package:flutter/material.dart';
import 'package:pinkvilla_test/constants/tik_tok_icons_icons.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(TikTokIcons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
            icon: Icon(TikTokIcons.search), title: Text('Search')),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle), title: Text('')),
        BottomNavigationBarItem(
            icon: Icon(TikTokIcons.messages), title: Text('Chat')),
        BottomNavigationBarItem(
            icon: Icon(TikTokIcons.profile), title: Text('Me')),
      ],
      currentIndex: 2,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
    );
  }
}
