import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isport_app/presentation/content/feed/selected_feed.dart';
import 'package:isport_app/domain/mocks/mock_constants.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  FeedState createState() => FeedState();
}

class FeedState extends State<Feed> {
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
            "Feed",
            style: TextStyle(
                fontFamily: 'Toboggan-Medium',
                fontSize: 30,
                color: Colors.blueAccent),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              for (var user in MockConstants.userList)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => SelectedFeed(user)));
                  },
                  child: Card(
                    child: SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 55,
                                  width: 55,
                                  child: Image.network(user.avatarLink),
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      user.fullName,
                                      style: const TextStyle(
                                          fontFamily: 'Toboggan-Medium',
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      user.nick,
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
                            const SizedBox(height: 15),
                            const Text(
                              MockConstants.longText,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
