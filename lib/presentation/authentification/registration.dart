import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isport_app/presentation/content/app_frame.dart';
import 'package:isport_app/presentation/authentification/login.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  RegistrationState createState() => RegistrationState();
}

class RegistrationState extends State<Registration> {
  int value = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.only(left: 40, right: 40),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Lets Register Account",
                    style: TextStyle(
                        fontFamily: 'Toboggan-Medium',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Hello user, you have a greatful journey",
                    style: TextStyle(
                        fontFamily: 'Toboggan-Medium',
                        fontSize: 20,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(
                    width: 425,
                    height: 45,
                    child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Name")),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 425,
                    height: 45,
                    child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Surname")),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 425,
                    height: 45,
                    child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Phone")),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 425,
                    height: 45,
                    child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Email")),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    width: 425,
                    height: 45,
                    child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueAccent),
                            ),
                            border: OutlineInputBorder(),
                            labelText: "Password")),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const AppFrame()));
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          fixedSize: const Size(190, 45)),
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Toboggan-Medium",
                            fontSize: 12.5,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontFamily: 'Toboggan-Medium',
                              fontSize: 12.5,
                              color: Colors.black),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => const Login()));
                          },
                          style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontFamily: 'Toboggan-Medium',
                                fontSize: 12.5,
                                color: Colors.blueAccent),
                          ),
                        )
                      ])
                ])));
  }
}
