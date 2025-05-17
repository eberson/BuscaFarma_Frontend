import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class AuthProvider extends ChangeNotifier {
  String _token = "";

  void setToken(String token) {
    _token = token;
    notifyListeners();
  }

  void logout() {
    _token = "";
    notifyListeners();
  }

  bool get isLogado => _token.isNotEmpty;
  String get token => _token;

  static ChangeNotifierProvider<AuthProvider> create() =>
      ChangeNotifierProvider(create: (_) => AuthProvider());
}
