class TryLoginBody {
  final String username;
  final String password;

  TryLoginBody({required this.username, required this.password});

  Map<String, String> toApi() {
    return {
      "username": username,
      "password": password,
    };
  }
}
