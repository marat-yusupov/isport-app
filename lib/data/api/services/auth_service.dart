import 'package:http/http.dart' as http;
import 'package:isport_app/data/api/models/api_user_model.dart';
import 'dart:convert';
import 'hosts.dart';

class AuthService {
  static const authService = Hosts.kAuthService;

  Future<ApiUserModel> TryLogin(String username, String password) async {
    String credentials = base64.encode(utf8.encode('$username:$password'));
    Map<String, String> headers = {'Authorization': 'Basic $credentials'};

    final response = await http.get(
      Uri.parse(authService),
      headers: headers,
    );

    if (response.statusCode == 200) {
      return ApiUserModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('No response received');
    }
  }
}
