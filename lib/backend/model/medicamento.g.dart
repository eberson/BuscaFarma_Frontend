// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicamento.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Medicamento _$MedicamentoFromJson(Map<String, dynamic> json) => Medicamento(
  json['id'] as String,
  json['nomeComercial'] as String,
  json['nomeQuimico'] as String,
  json['descricao'] as String,
  json['imagem'] as String,
  $enumDecode(_$TipoMedicamentoEnumMap, json['tipoMedicamento']),
  (json['unidadeMedida'] as num).toInt(),
  json['quantidade'] as String,
  json['categoriaId'] as String,
  json['categoriaDescricao'] as String,
);

Map<String, dynamic> _$MedicamentoToJson(Medicamento instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomeComercial': instance.nomeComercial,
      'nomeQuimico': instance.nomeQuimico,
      'descricao': instance.descricao,
      'imagem': instance.imagem,
      'tipoMedicamento': _$TipoMedicamentoEnumMap[instance.tipoMedicamento]!,
      'unidadeMedida': instance.unidadeMedida,
      'quantidade': instance.quantidade,
      'categoriaId': instance.responseCategoriaId,
      'categoriaDescricao': instance.responseCategoriaDescricao,
    };

const _$TipoMedicamentoEnumMap = {
  TipoMedicamento.AltoCusto: 1,
  TipoMedicamento.Comum: 2,
};
