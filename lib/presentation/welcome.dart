import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isport_app/presentation/login.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  WelcomeState createState() => WelcomeState();
}

class WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "iSport",
              style: TextStyle(
                  fontFamily: 'Toboggan',
                  fontSize: 100,
                  color: Colors.blueAccent),
            ),
            const Text(
              """
Mobile app for sport to you!
Register now!
""",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Toboggan-Medium',
                  fontSize: 15,
                  color: Colors.black),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => const Login()));
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                fixedSize: const Size(250, 50),
              ),
              child: const Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Toboggan-Medium",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: null,
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  fixedSize: const Size(250, 50)),
              child: const Text(
                "CREATE ACCOUNT",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Toboggan-Medium",
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}