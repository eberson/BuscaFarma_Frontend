import 'package:flutter/foundation.dart';

class Auth {
  final ValueNotifier<String> _tokenNotifier = ValueNotifier("");

  void setToken(String token) {
    _tokenNotifier.value = token;
  }

  void logout() {
    _tokenNotifier.value = "";
  }

  bool get isLogado => _tokenNotifier.value.isNotEmpty;
  String get token => _tokenNotifier.value;
  ValueNotifier<String> get tokenNotifier => _tokenNotifier;
}
