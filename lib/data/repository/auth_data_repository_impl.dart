import 'package:isport_app/data/api/api_util.dart';
import 'package:isport_app/domain/models/auth_data_model.dart';
import 'package:isport_app/domain/repository/auth_data_repository.dart';

class AuthDataRepositoryImpl extends AuthDataRepository {
  final ApiUtil _apiUtil;

  AuthDataRepositoryImpl(this._apiUtil);

  @override
  Future<AuthDataModel> tryLogin(
      {required String username, required String password}) {
    return _apiUtil.tryLogin(username: username, password: password);
  }
}
