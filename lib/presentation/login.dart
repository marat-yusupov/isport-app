import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text(
              "Lets Sign you in!",
              style: TextStyle(
                  fontFamily: 'Toboggan-Medium',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 20),
            const Text(
              """
Welcome back!
We miss you! 
              """,
              style: TextStyle(
                  fontFamily: 'Toboggan-Medium',
                  fontSize: 30,
                  color: Colors.black),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10),
            const Center(
              child: SizedBox(
                width: 450,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "E-mail, phone or username",
                  ),
                  cursorColor: Colors.blueAccent,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(
              child: SizedBox(
                width: 450,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                  cursorColor: Colors.blueAccent,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontFamily: 'Toboggan-Medium',
                      fontSize: 15,
                      color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Center(
              child: TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    fixedSize: const Size(250, 50)),
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Toboggan-Medium",
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Divider(),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: SizedBox(
                    width: 35,
                    height: 35,
                    child: Image.asset("assets/images/google.png"),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset("assets/images/facebook.png"),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/images/apple.png"),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontFamily: 'Toboggan-Medium',
                      fontSize: 12.5,
                      color: Colors.black),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: const Text(
                    "Register now",
                    style: TextStyle(
                        fontFamily: 'Toboggan-Medium',
                        fontSize: 12.5,
                        color: Colors.blueAccent),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
