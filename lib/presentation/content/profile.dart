import 'package:flutter/material.dart';
import 'package:isport_app/domain/mocks/models/mock_user_model.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
            "Profile",
            style: TextStyle(
                fontFamily: 'Toboggan-Medium',
                fontSize: 30,
                color: Colors.blueAccent),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    SizedBox(
                      height: 55,
                      width: 55,
                      child: Image.network(MockUserModel().avatarLink),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MockUserModel().fullName,
                          style: const TextStyle(
                              fontFamily: 'Toboggan-Medium',
                              fontSize: 15,
                              color: Colors.black),
                        ),
                        Text(
                          MockUserModel().nick,
                          style: const TextStyle(
                              fontFamily: 'Toboggan',
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
            Row(
              children: [
                const Icon(Icons.image_outlined),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "CHANGE AVATAR",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Toboggan-Medium",
                              fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.password_outlined),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "CHANGE PASSWORD",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Toboggan-Medium",
                              fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.question_answer_outlined),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "ABOUT APPLICATION",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Toboggan-Medium",
                              fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.help_center_outlined),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "HELP",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Toboggan-Medium",
                              fontSize: 15,
                    ),
                          ),
                ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                child: Row(
              children: [
                const Icon(Icons.logout_outlined),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "LOGOUT",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Toboggan-Medium",
                          fontSize: 15,
                    ),
                  ),
                ),
              ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
