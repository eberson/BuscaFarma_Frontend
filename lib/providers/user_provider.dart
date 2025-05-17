import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/providers/auth.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class UserProvider extends ChangeNotifier {
  final API api;
  final AuthProvider auth;

  UserProvider({required this.api, required this.auth});

  Future<void> autentica(Credencial credencial) async {
    try {
      var token = await api.autentica(credencial);
      auth.setToken(token);
    } catch (e) {
      if (e is DioException) {
        throw ErrorHandler.dioException(error: e);
      }

      throw ErrorHandler.otherException();
    } finally {
      notifyListeners();
    }
  }
}
