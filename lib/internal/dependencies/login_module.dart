import 'package:isport_app/domain/state/login_state.dart';
import 'package:isport_app/internal/dependencies/repository_module.dart';

class LoginModule {
  static LoginState loginState() {
    return LoginState(
      RepositoryModule.authDataRepository(),
    );
  }
}
