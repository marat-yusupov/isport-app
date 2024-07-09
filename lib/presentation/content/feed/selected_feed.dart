import 'package:flutter/material.dart';
import 'package:full_screen_image/full_screen_image.dart';
import 'package:isport_app/domain/mocks/mock_constants.dart';
import 'package:isport_app/domain/mocks/models/mock_post_model.dart';

// ignore: must_be_immutable
class SelectedFeed extends StatefulWidget {
  SelectedFeed(this.post, {super.key});

  MockPostModel post;

  @override
  SelectedFeedState createState() => SelectedFeedState();
}

class SelectedFeedState extends State<SelectedFeed> {
  bool _isLiked = false;
  final FocusNode textFieldFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.all(15),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 55,
                                  width: 55,
                                  child: Image.network(
                                      widget.post.user.avatarLink),
                                ),
                                const SizedBox(width: 15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.post.user.fullName,
                                      style: const TextStyle(
                                          fontFamily: 'Toboggan-Medium',
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      widget.post.user.nick,
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
                              widget.post.textContent,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                width: 80,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (_isLiked) {
                                        _isLiked = false;
                                      } else {
                                        _isLiked = true;
                                      }
                                    });
                                  },
                                  icon: Row(
                                    children: [
                                      Icon(
                                        _isLiked
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: Colors.red,
                                      ),
                                      const SizedBox(width: 7.5),
                                      const Text('Like'),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "${MockConstants.userList.length} comments:",
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: "Toboggan-Medium",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),
                  for (var user in MockConstants.userList)
                    Card(
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                MockConstants.commentText,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: SizedBox(
              height: 65,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      width: 1, color: Colors.black.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.network(MockConstants.ivan.avatarLink),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          focusNode: textFieldFocus,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: textFieldFocus.hasFocus
                                ? null
                                : "Add a comment...",
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        icon: const Icon(Icons.send_outlined),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
