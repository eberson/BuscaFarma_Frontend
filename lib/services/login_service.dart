import 'package:buscafarma/backend/api.dart';
import 'package:buscafarma/backend/error_handler.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class LoginService {
  Future<void> autentica(Credencial credencial) async {
    try {
      final token = await API.instance.autentica(credencial);

      final authProvider = GetIt.I<AuthService>();
      authProvider.onLogon(token.replaceAll(RegExp(r'^"|"$'), ''));
    } catch (e) {
      if (e is DioException) {
        throw ErrorHandler.dioException(error: e);
      }

      throw ErrorHandler.otherException();
    }
  }
}
