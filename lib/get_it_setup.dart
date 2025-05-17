import 'package:buscafarma/backend/dio.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:buscafarma/services/login_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<AuthService>(() => AuthService());
  getIt.registerLazySingleton<LoginService>(() => LoginService());

  getIt.registerLazySingleton<Dio>(() => buildDio());
}
