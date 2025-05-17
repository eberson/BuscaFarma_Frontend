import 'dart:convert';

import 'package:dio/dio.dart';

class ErrorHandler implements Exception {
  final String message;

  ErrorHandler(this.message);

  factory ErrorHandler.dioException({required DioException error}) {
    return _handleDioException(error);
  }

  factory ErrorHandler.otherException() {
    return _handleOtherException();
  }

  static ErrorHandler _handleOtherException() {
    return ErrorHandler("Ops, alguma coisa deu errado :(");
  }

  static ErrorHandler _handleDioException(DioException error) {
    switch (error.type) {
      case DioExceptionType.cancel:
        return ErrorHandler("Requisição cancelada");
      case DioExceptionType.connectionTimeout:
        return ErrorHandler("Não consegui conectar no servidor...");
      case DioExceptionType.receiveTimeout:
        return ErrorHandler("Servidor demorou muito para responder...");
      case DioExceptionType.badResponse:
        if (error.response?.statusCode == 503) {
          return _handleOtherException();
        } else if (error.response?.statusCode != 401) {
          return ErrorHandler(
            _handleBadRequest(
              jsonDecode(error.response?.data) as Map<String, dynamic>,
            ),
          );
        }
        return ErrorHandler(
          "Você não está autorizado a realizar essa operação",
        );
      case DioExceptionType.unknown:
        return _handleOtherException();
      case DioExceptionType.sendTimeout:
        return ErrorHandler("Não consegui conectar no servidor...");
      case DioExceptionType.connectionError:
        return ErrorHandler("Não consegui conectar no servidor...");
      default:
        return ErrorHandler(
          error.response?.statusMessage ?? "Ops, alguma coisa deu errado :(",
        );
    }
  }

  // this is a sample error structure it might change on your case
  // so you have to add your own error structure  in order to catch the errors
  static String _handleBadRequest(Map<String, dynamic>? errorData) {
    String error = "";

    if (errorData?["mensagem"] != null) {
      error = errorData?["mensagem"];
    } else if (errorData?['error_description'] != null) {
      final message = errorData?['error_description'];
      error = message;
    } else if (errorData?['error'] != null) {
      try {
        final errorObject = errorData?['error'];
        final message = errorObject['message'];
        final dynamic errorTag =
            message.keys.first; // Extract the first key dynamically
        error = message[errorTag];
      } catch (e) {
        error = errorData?['error']['message'] ?? "";
      }
    } else if (errorData?['errors'] == null && errorData?.entries != null) {
      for (var item in errorData!.entries) {
        error = item.value.toString();
        break;
      }
    } else {
      error = "Something went wrong";
    }

    return error;
  }
}
