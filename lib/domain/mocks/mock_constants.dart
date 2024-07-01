import 'package:isport_app/domain/mocks/models/mock_user_model.dart';

class MockConstants {
  static int commentsCount = 5;
  static const String longText = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
""";
  static const String commentText =
      """Mock comment text for testing. Great news! Very nice :^)""";
  static List<MockUserModel> userList = [
    MockUserModel.custom(
        'Ivan Ivanov',
        '@vanya.ivanov',
        'https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745',
        'Athlete'),
    MockUserModel.custom(
        'Oleg Smirnov',
        '@oleg.smirnov',
        'https://cdn1.iconfinder.com/data/icons/user-pictures/101/malecostume-512.png',
        'Athlete'),
    MockUserModel.custom(
        'Vasiliy Vasyliev',
        '@vasya.vasiliev',
        'https://atg-prod-scalar.s3.amazonaws.com/studentpower/media/user%20avatar.png',
        'Coach'),
    MockUserModel.custom(
        'Vasilisa Ivanova',
        '@vasya.ivanova',
        'https://w7.pngwing.com/pngs/832/40/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png',
        'Athlete'),
    MockUserModel.custom(
        'Viktor Babkin',
        '@vitya.babka',
        'https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png',
        'Coach'),
  ];
}
