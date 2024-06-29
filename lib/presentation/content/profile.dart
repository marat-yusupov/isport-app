import 'package:flutter/material.dart';
import 'package:isport_app/presentation/content/mock_constants.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,
        title: Row(
          children: [
            SizedBox(
              height: 90,
              width: 90,
              child: Image.network(MockConstants.avatarLink),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MockConstants.fullName,
                  style: TextStyle(
                      fontFamily: 'Toboggan-Medium',
                      fontSize: 25,
                      color: Colors.white),
                ),
                Text(
                  MockConstants.nick,
                  style: TextStyle(
                      fontFamily: 'Toboggan',
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
                SizedBox(height: 10),
                Text(
                  "Rang: ${MockConstants.rang}",
                  style: TextStyle(
                      fontFamily: 'Toboggan-Medium',
                      fontSize: 15,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Profile",
              style: TextStyle(
                  fontFamily: 'Toboggan-Medium',
                  fontSize: 30,
                  color: Colors.black),
            ),
            const Divider(),
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
                      fontSize: 20,
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
                      fontSize: 20,
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
                      fontSize: 20,
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
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            const SizedBox(height: 15),
            Row(
              children: [
                const Icon(Icons.logout_outlined),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "LOGOUT",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Toboggan-Medium",
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
