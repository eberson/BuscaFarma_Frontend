import 'package:flutter/foundation.dart';

class AuthService extends ChangeNotifier {
  String _token = "";

  void onLogon(String token) {
    _token = token;
    notifyListeners();
  }

  void onLogout() {
    _token = "";
    notifyListeners();
  }

  bool get isLogado => _token.isNotEmpty;
  String get token => _token;
}
