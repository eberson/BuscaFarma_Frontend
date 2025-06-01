// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mudar_senha.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MudarSenha _$MudarSenhaFromJson(Map<String, dynamic> json) => MudarSenha(
  senha: json['senha'] as String,
  novaSenha: json['novaSenha'] as String,
  confirmarNovaSenha: json['confirmarNovaSenha'] as String,
);

Map<String, dynamic> _$MudarSenhaToJson(MudarSenha instance) =>
    <String, dynamic>{
      'senha': instance.senha,
      'novaSenha': instance.novaSenha,
      'confirmarNovaSenha': instance.confirmarNovaSenha,
    };
