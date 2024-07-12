import 'package:isport_app/data/api/requests/try_login_body.dart';
import 'package:isport_app/data/api/services/auth_service.dart';
import 'package:isport_app/data/mapper/auth_data_mapper.dart';
import 'package:isport_app/domain/models/auth_data_model.dart';

class ApiUtil {
  final AuthService _authService;

  ApiUtil(this._authService);

  Future<AuthDataModel> tryLogin({
    required String username,
    required String password,
  }) async {
    final body = TryLoginBody(username: username, password: password);
    final result = await _authService.tryLogin(body);
    return AuthDataMapper.fromApi(result);
  }
}
