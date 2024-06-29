import 'package:flutter/material.dart';

class Workouts extends StatefulWidget {
  const Workouts({super.key});

  @override
  WorkoutsState createState() => WorkoutsState();
}

class WorkoutsState extends State<Workouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Workouts",
            style: TextStyle(
                fontFamily: 'Toboggan-Medium',
                fontSize: 30,
                color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
