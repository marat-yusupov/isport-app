import 'package:isport_app/domain/models/auth_data_model.dart';
import 'package:isport_app/domain/repository/auth_data_repository.dart';
import 'package:mobx/mobx.dart';

part 'login_state.g.dart';

class LoginState = LoginStateBase with _$LoginState;

abstract class LoginStateBase with Store {
  LoginStateBase(this._authDataRepository);

  final AuthDataRepository _authDataRepository;

  @observable
  AuthDataModel? authData;

  @observable
  bool isLoading = false;

  @observable
  String? error;

  @action
  Future<void> tryLogin({
    required String username,
    required String password,
  }) async {
    isLoading = true;
    error = null;
    try {
      final data =
      await _authDataRepository.tryLogin(
          username: username, password: password);
      if (data == null) {
        error = "Incorrect login or password";
      }
      authData = data;
    } catch (ex) {
      error = ex.toString();
    }
    isLoading = false;
  }
}
