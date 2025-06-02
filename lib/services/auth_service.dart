import 'package:buscafarma/backend/model/usuario.dart';
import 'package:flutter/foundation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthService extends ChangeNotifier {
  String _token = "";
  String _userId = "";
  Usuario? _usuario;

  void onLogon(String token) {
    _token = token;
    _userId = JwtDecoder.decode(_token)["Id"];

    notifyListeners();
  }

  void onUserInfoLoaded(Usuario usuario) {
    _usuario = usuario;
    notifyListeners();
  }

  

  void onLogout() {
    _token = "";
    _userId = "";
    _usuario = null;

    notifyListeners();
  }

  bool get isLogado => _token.isNotEmpty;
  String get token => _token;
  String get userId => _userId;
  Usuario? get usuario => _usuario;
}
