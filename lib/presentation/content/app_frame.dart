import 'package:flutter/material.dart';
import 'package:isport_app/presentation/content/feed/feed.dart';
import 'package:isport_app/presentation/content/profile.dart';
import 'package:isport_app/presentation/content/workouts.dart';

class AppFrame extends StatefulWidget {
  const AppFrame({super.key});

  @override
  _AppFrameState createState() => _AppFrameState();
}

class _AppFrameState extends State<AppFrame> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Feed(),
    Workouts(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: "Feed",
              icon: Icon(Icons.people_outlined),
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              label: "Workouts",
              icon: Icon(Icons.home_outlined),
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person_2_outlined),
              backgroundColor: Colors.blueAccent),
        ],
        selectedLabelStyle: const TextStyle(
            fontFamily: 'Toboggan-Medium', fontSize: 12.5, color: Colors.black),
        unselectedLabelStyle: const TextStyle(
            fontFamily: 'Toboggan-Medium', fontSize: 12.5, color: Colors.black),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
