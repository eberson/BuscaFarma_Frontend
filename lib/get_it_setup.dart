import 'package:buscafarma/backend/dio.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:buscafarma/services/categoria_service.dart';
import 'package:buscafarma/services/login_service.dart';
import 'package:buscafarma/services/medicamento_service.dart';
import 'package:buscafarma/services/reserva_service.dart';
import 'package:buscafarma/services/search_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<AuthService>(() => AuthService());
  getIt.registerLazySingleton<LoginService>(() => LoginService());
  getIt.registerLazySingleton<CategoriaService>(() => CategoriaService());
  getIt.registerLazySingleton<MedicamentoService>(() => MedicamentoService());
  getIt.registerLazySingleton<ReservaService>(() => ReservaService());
  getIt.registerLazySingleton<SearchService>(() => SearchService());

  getIt.registerLazySingleton<Dio>(() => buildDio());
}
