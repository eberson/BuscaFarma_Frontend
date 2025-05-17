import 'package:buscafarma/providers/auth.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class TokenInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final auth = GetIt.I<Auth>();

    if (auth.isLogado) {
      final token = auth.token;

      if (token.isNotEmpty) {
        options.headers["Authorization"] = "Bearer $token";
      }
    }

    super.onRequest(options, handler);
  }
}
