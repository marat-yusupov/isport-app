import 'package:isport_app/domain/models/auth_data_model.dart';

abstract class AuthDataRepository {
  Future<AuthDataModel?> tryLogin({
    required String username,
    required String password,
  });
}
