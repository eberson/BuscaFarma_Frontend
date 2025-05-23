import 'package:buscafarma/backend/error_handler.dart';
import 'package:dio/dio.dart';

typedef APICall<T> = Future<T> Function();

Future<T> makeCall<T>(APICall<T> call) async {
  try {
    return call();
  } catch (e) {
    if (e is DioException) {
      throw ErrorHandler.dioException(error: e);
    }

    throw ErrorHandler.otherException();
  }
}
