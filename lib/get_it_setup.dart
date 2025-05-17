import 'package:buscafarma/backend/dio.dart';
import 'package:buscafarma/providers/auth.dart';
import 'package:buscafarma/providers/login.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<Auth>(() => Auth());
  getIt.registerLazySingleton<Login>(() => Login());

  getIt.registerLazySingleton<Dio>(() => buildDio());
}
