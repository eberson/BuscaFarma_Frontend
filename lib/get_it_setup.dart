import 'package:buscafarma/backend/dio.dart';
import 'package:buscafarma/services/auth_service.dart';
import 'package:buscafarma/services/categoria_service.dart';
import 'package:buscafarma/services/home_search_service.dart';
import 'package:buscafarma/services/login_service.dart';
import 'package:buscafarma/services/medicamento_service.dart';
import 'package:buscafarma/services/novo_usuario_service.dart';
import 'package:buscafarma/services/reserva_service.dart';
import 'package:buscafarma/services/sacola_service.dart';
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
  getIt.registerLazySingleton<NovoUsuarioService>(() => NovoUsuarioService());
  getIt.registerLazySingleton<SacolaService>(() => SacolaService());
  getIt.registerLazySingleton<HomeSearchService>(() => HomeSearchService());

  getIt.registerLazySingleton<Dio>(() => buildDio());
}
