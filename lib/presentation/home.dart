import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
      ),
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
