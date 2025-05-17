import 'package:buscafarma/providers/auth.dart';
import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  final AuthProvider auth;

  TokenInterceptor(this.auth);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = auth.token;

    if (token.isNotEmpty) {
      options.headers["Authorization"] = "Bearer $token";
    }

    super.onRequest(options, handler);
  }
}
