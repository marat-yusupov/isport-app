import 'package:isport_app/data/api/models/api_auth_data_model.dart';
import 'package:isport_app/domain/models/auth_data_model.dart';

class AuthDataMapper {
  static AuthDataModel fromApi(ApiAuthDataModel apiAuthDataModel) {
    return AuthDataModel(
        sessionId: apiAuthDataModel.sessionId,
        accountId: apiAuthDataModel.accountId);
  }
}
