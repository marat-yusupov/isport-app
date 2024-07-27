class ApiAuthDataModel {
  final String accountId;

  ApiAuthDataModel({required this.accountId});

  factory ApiAuthDataModel.fromJson(Map<String, dynamic> json) {
    print('[ApiAuthDataModel::fromJson] json = $json');

    if(json.containsKey("error")){
      throw json["error"];
    }

    return ApiAuthDataModel(
        accountId: json['account_id']);
  }
}
