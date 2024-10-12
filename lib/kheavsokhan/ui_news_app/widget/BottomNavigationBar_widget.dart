import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/screen/explore_screen.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/screen/home_screen.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/screen/profile_screen.dart';
import 'package:todo_app_team/kheavsokhan/ui_news_app/screen/setting_screen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {

  // index of all screen
  int _currentIndex = 0;

  // list all screen
  final List<Widget> body = const [
    HomeScreen(),
    ExploreScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // show screen by index
        child: body[_currentIndex],
      ),
      // button for switch screen
      bottomNavigationBar: BottomNavigationBar(
        // fetch index screen when clicked
        currentIndex: _currentIndex,
        // set color for icon when clicked
        selectedItemColor: Colors.blue,
        // remove color from icon when unclicked
        unselectedItemColor: Colors.grey,
        // set index are stand on
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        // icon and name screen at bottom  screen
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}

// in this file we must use stateful because we need switch screen. If we use stateless we can not setState for switch screen