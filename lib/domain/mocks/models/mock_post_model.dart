import 'package:flutter/material.dart';
import 'package:isport_app/domain/mocks/models/mock_user_model.dart';

class MockPostModel {
  MockPostModel(this.user, this.textContent, this.imageContent);

  MockUserModel user;
  String textContent;
  List<Image> imageContent;
}
