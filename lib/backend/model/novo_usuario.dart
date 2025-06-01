import 'package:buscafarma/backend/model/perfil.dart';
import 'package:json_annotation/json_annotation.dart';

part 'novo_usuario.g.dart';

@JsonSerializable()
class NovoUsuario {
  final String nome;
  final String cpf;
  final String telefone;
  final String senha;
  final String confirmarSenha;
  final String email;
  final Perfil perfil;

  NovoUsuario({
    required this.nome,
    required this.cpf,
    required this.telefone,
    required this.senha,
    required this.confirmarSenha,
    required this.email,
    this.perfil = Perfil.Usuario
  });

  factory NovoUsuario.fromJson(Map<String, dynamic> json) => _$NovoUsuarioFromJson(json);

  Map<String, dynamic> toJson() => _$NovoUsuarioToJson(this);
}