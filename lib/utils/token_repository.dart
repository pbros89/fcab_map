class TokenRepository {
  late String _token;

  String get token => _token;

  set token(String token) {
    _token = token;
  }

  TokenRepository._internal();

  static final _singleton = TokenRepository._internal();

  factory TokenRepository() => _singleton;

  
}
