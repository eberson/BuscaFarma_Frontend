// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_senha.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetSenha _$ResetSenhaFromJson(Map<String, dynamic> json) => ResetSenha(
  chaveResetSenha: json['chaveResetSenha'] as String,
  novaSenha: json['novaSenha'] as String,
  confirmarNovaSenha: json['confirmarNovaSenha'] as String,
);

Map<String, dynamic> _$ResetSenhaToJson(ResetSenha instance) =>
    <String, dynamic>{
      'chaveResetSenha': instance.chaveResetSenha,
      'novaSenha': instance.novaSenha,
      'confirmarNovaSenha': instance.confirmarNovaSenha,
    };
