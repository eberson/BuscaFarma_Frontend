// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novo_usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NovoUsuario _$NovoUsuarioFromJson(Map<String, dynamic> json) => NovoUsuario(
  nome: json['nome'] as String,
  cpf: json['cpf'] as String,
  telefone: json['telefone'] as String,
  senha: json['senha'] as String,
  confirmarSenha: json['confirmarSenha'] as String,
  email: json['email'] as String,
  perfil:
      $enumDecodeNullable(_$PerfilEnumMap, json['perfil']) ?? Perfil.Usuario,
);

Map<String, dynamic> _$NovoUsuarioToJson(NovoUsuario instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'cpf': instance.cpf,
      'telefone': instance.telefone,
      'senha': instance.senha,
      'confirmarSenha': instance.confirmarSenha,
      'email': instance.email,
      'perfil': _$PerfilEnumMap[instance.perfil]!,
    };

const _$PerfilEnumMap = {Perfil.Backoffice: 0, Perfil.Usuario: 1};
