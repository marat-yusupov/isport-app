import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isport_app/presentation/content/app_frame.dart';
import 'package:isport_app/presentation/authentification/registration.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final _loginFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();

  @override
  void dispose() {
    _loginFieldController.dispose();
    _passwordFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            const Text(
              "Lets Sign you in!",
              style: TextStyle(
                  fontFamily: 'Toboggan-Medium',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 15),
            const Text(
              """
Welcome back!
We miss you!
              """,
              style: TextStyle(
                  fontFamily: 'Toboggan-Medium',
                  fontSize: 20,
                  color: Colors.black),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 10),
            SizedBox(
                height: 45,
                child: TextField(
                controller: _loginFieldController,
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                  border: OutlineInputBorder(),
                    labelText: "E-mail, phone or username",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                cursorColor: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 45,
                child: TextField(
                controller: _passwordFieldController,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  ),
                cursorColor: Colors.blueAccent,
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
            const SizedBox(height: 15),
            const Divider(),
            const SizedBox(height: 5),
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
            const SizedBox(height: 5),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const Registration()));
                  },
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
