import 'package:flutter/material.dart';
import 'package:isport_app/domain/mocks/models/mock_post_model.dart';
import 'package:isport_app/domain/mocks/models/mock_user_model.dart';

class MockConstants {
  static int commentsCount = 5;

  static const String longText = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""";

  static const String commentText =
      """Mock comment text for testing. Great news! Very nice :^)""";
  
  static MockUserModel ivan = MockUserModel.custom(
      'Ivan Ivanov',
      '@vanya.ivanov',
      'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745',
      'Athlete');

  static MockUserModel oleg = MockUserModel.custom(
      'Oleg Smirnov',
      '@oleg.smirnov',
      'https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png',
      'Athlete');

  static MockUserModel vasiliy = MockUserModel.custom(
      'Vasiliy Vasyliev',
      '@vasya.vasiliev',
      'https://atg-prod-scalar.s3.amazonaws.com/studentpower/media/user%20avatar.png',
      'Coach');

  static MockUserModel vasilisa = MockUserModel.custom(
      'Vasilisa Ivanova',
      '@vasya.ivanova',
      'https://w7.pngwing.com/pngs/832/40/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png',
      'Athlete');

  static MockUserModel viktor = MockUserModel.custom(
        'Viktor Babkin',
        '@vitya.babka',
        'https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png',
      'Coach');

  static List<MockUserModel> userList = [ivan, oleg, vasiliy, vasilisa, viktor];

  static List<MockPostModel> postList = [
    MockPostModel(
        ivan,
        "Yesterday I spent the whole evening training, you feel so great after a 2-hour workout :-)",
        []),
    MockPostModel(oleg, """
Yesterday I talked to my trainer and here are some tips he gave me on the bench press:
1) Blah-blah-blah
2) La-la-la
3) Pu-pu-pu
""", []),
    MockPostModel(vasiliy, """
I love sports! Yesterday I ran 11 kilometers)
""", []),
    MockPostModel(vasilisa, """
My new top for training :) Look at the attached photos, to do this, click on the card with this news, there are boobs and great nature ;-)
""", [
      Image.network(
          'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTyLoZiF4Wg1LRmxSHCsbQxFd__9U6VUlp7QoKYvGHdQbQlb5-Wb1jrcx07A8ePiDdDWEY-gI6zEzyUyV_U0FEqUgc0uVJ9so8OS14DIoFr&usqp=CAE'),
      Image.network(
          'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSYQa4eQasSC5dcyyeVWExRNVI0Yw1i9VzU1xMpmyWtBAqI4FEC16tKg9d2hMlmiXm6KI2tqhNPgMMPFYo5g4KF6T2y4ioYgAWXIIeitM9CK_vKaLMDscg-ow&usqp=CAE'),
      Image.network(
          'https://nt.global.ssl.fastly.net/binaries/content/gallery/website/national/library/our-cause/on-the-shore-borrowdale-and-derwent-water-1518851.jpg'),
      Image.network(
          'https://nt.global.ssl.fastly.net/binaries/content/gallery/website/national/library/our-cause/on-the-shore-borrowdale-and-derwent-water-1518851.jpg'),
      Image.network(
          'https://nt.global.ssl.fastly.net/binaries/content/gallery/website/national/library/our-cause/on-the-shore-borrowdale-and-derwent-water-1518851.jpg')
    ]),
    MockPostModel(viktor,
        "Sign up for my burger eating course! Let's lose weight together!", []),
  ];
}
