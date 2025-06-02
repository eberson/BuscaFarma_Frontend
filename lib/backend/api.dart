import 'package:buscafarma/backend/model/categoria.dart';
import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/backend/model/novo_usuario.dart';
import 'package:buscafarma/backend/model/reserva.dart';
import 'package:buscafarma/backend/model/usuario.dart';
import 'package:buscafarma/backend/request/credencial.dart';
import 'package:buscafarma/backend/request/mudar_senha.dart';
import 'package:buscafarma/backend/request/nova_reserva.dart';
import 'package:buscafarma/backend/request/reset_senha.dart';
import 'package:buscafarma/backend/request/start_reset_senha.dart';
import 'package:buscafarma/backend/response/message.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

@RestApi(baseUrl: "https://buscafarma-api.tccnapratica.com.br")
abstract class API {
  factory API(Dio dio, {String? baseUrl}) = _API;

  @POST("/autenticar")
  Future<String> autentica(@Body() Credencial credencial);

  @POST("/gerar-chave-reset-senha")
  Future<Message> startResetSenha(@Body() StartResetSenha request);

  @PUT("/resetar-senha")
  Future<Message> resetSenha(@Body() ResetSenha request);

  @PUT("/alterar-senha")
  Future<Message> alterarSenha(@Body() MudarSenha request);

  @GET("/usuario/id/{id}")
  Future<Usuario> me(@Path() String id);

  @GET("/categoria/listar")
  Future<List<Categoria>> listaCategorias();

  @GET("/medicamento/listar")
  Future<List<Medicamento>> listaMedicamentos();

  @GET("/reserva/listar")
  Future<List<Reserva>> listaReservas();

  @POST("/usuario/adicionar")
  Future<Message> criaUsuario(@Body() NovoUsuario novoUsuario);

  @POST("/reserva/adicionar")
  Future<Message> criaReserva(@Body() NovaReserva novaReserva);

  static API? _instance;

  static API get instance {
    return _instance ??= API(GetIt.I<Dio>());
  }
}
