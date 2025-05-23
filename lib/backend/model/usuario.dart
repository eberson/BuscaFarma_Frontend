import 'package:buscafarma/backend/model/perfil.dart';
import 'package:json_annotation/json_annotation.dart';

part 'usuario.g.dart';

@JsonSerializable()
class Usuario {
  final String id;
  final String nome;
  final String cpf;
  final String telefone;

  @JsonKey(name: "tipo")
  final Perfil? perfil;

  Usuario(this.id, this.nome, this.cpf, this.telefone, this.perfil);

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);

  Map<String, dynamic> toJson() => _$UsuarioToJson(this);
}
