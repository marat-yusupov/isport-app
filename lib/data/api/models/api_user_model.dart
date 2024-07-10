import 'package:uuid/uuid.dart';

class ApiUserModel {
  final String sessionId;
  final String nickname;
  final int accountType;

  ApiUserModel(
      {required this.sessionId,
      required this.nickname,
      required this.accountType});

  factory ApiUserModel.fromJson(Map<String, dynamic> json)
  {
    return ApiUserModel(
      sessionId: json['session_id'],
      nickname: json['nickname'],
      accountType: json['account_type']
    );
  }

  void print_model()
  {
    print("[SESSION ID]: $sessionId \n [NICKNAME]: $nickname \n [ACCOUNT TYPE]: $accountType");
  }
}
