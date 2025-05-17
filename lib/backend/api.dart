import 'package:buscafarma/backend/dio.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://buscafarma-api.tccnapratica.com.br")
abstract class API {
  factory API(Dio dio, {String? baseUrl}) = _API;

  @POST("/autenticar")
  Future<String> autentica(@Body() Credencial credencial);

  static API? _instance;

  static API get instance {
    return _instance ??= API(buildDio());
  }
}
