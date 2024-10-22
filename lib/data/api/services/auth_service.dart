import 'package:http/http.dart' as http;
import 'package:isport_app/data/api/models/api_auth_data_model.dart';
import 'package:isport_app/data/api/requests/try_login_body.dart';
import 'dart:convert';
import 'hosts.dart';

class AuthService {
  static const _authentificationRoute = Hosts.kAuthentification;

  Future<ApiAuthDataModel?> tryLogin(TryLoginBody body) async {
    String credentials = base64.encode(utf8.encode('${body.username}:${body.password}'));
    Map<String, String> headers = {'Authorization': 'Basic $credentials'};

    final response = await http.get(
      Uri.parse(_authentificationRoute),
      headers: headers,
    );

    if (response.statusCode == 200) {
      try {
        return ApiAuthDataModel.fromJson(jsonDecode(response.body));
      } catch (exception) {
        return null;
      }
    } else {
      throw Exception('No response received');
    }
  }
}
