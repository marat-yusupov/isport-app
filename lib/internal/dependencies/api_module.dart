import 'package:isport_app/data/api/api_util.dart';
import 'package:isport_app/data/api/services/auth_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    return _apiUtil ?? ApiUtil(AuthService());
  }
}
