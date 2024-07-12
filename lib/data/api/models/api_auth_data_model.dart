class ApiAuthDataModel {
  final String sessionId;
  final String accountId;

  ApiAuthDataModel({required this.sessionId, required this.accountId});

  factory ApiAuthDataModel.fromJson(Map<String, dynamic> json) {
    print('[ApiAuthDataModel::fromJson] json = $json');

    if(json.containsKey("error")){
      throw json["error"];
    }

    return ApiAuthDataModel(
        sessionId: json['session_id'], accountId: json['account_id']);
  }
}
