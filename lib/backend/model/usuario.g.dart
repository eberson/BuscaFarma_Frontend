// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map<String, dynamic> json) => Usuario(
  json['id'] as String,
  json['nome'] as String,
  json['cpf'] as String,
  json['telefone'] as String,
  $enumDecodeNullable(_$PerfilEnumMap, json['tipo']),
);

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{
  'id': instance.id,
  'nome': instance.nome,
  'cpf': instance.cpf,
  'telefone': instance.telefone,
  'tipo': _$PerfilEnumMap[instance.perfil],
};

const _$PerfilEnumMap = {Perfil.Backoffice: 0, Perfil.Usuario: 1};
