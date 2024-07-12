import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:isport_app/presentation/content/feed/selected_feed.dart';
import 'package:isport_app/domain/mocks/mock_constants.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
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
              for (var post in MockConstants.postList)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => SelectedFeed(post)));
                  },
                  child: Card(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding:
                            const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 55,
                                  width: 55,
                                  child: Image.network(post.user.avatarLink),
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      post.user.fullName,
                                      style: const TextStyle(
                                          fontFamily: 'Toboggan-Medium',
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      post.user.nick,
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
                            Text(
                              post.textContent,
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
