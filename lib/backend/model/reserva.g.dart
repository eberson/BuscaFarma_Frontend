// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserva.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reserva _$ReservaFromJson(Map<String, dynamic> json) => Reserva(
  json['id'] as String,
  DateTime.parse(json['dataReserva'] as String),
  json['imagemReceita'] as String,
  (json['quantidade'] as num?)?.toInt(),
  json['dataRetirada'] == null
      ? null
      : DateTime.parse(json['dataRetirada'] as String),
  Reserva._fromJsonRetirante(json['retirante'] as Map<String, dynamic>),
  (json['status'] as num).toInt(),
  (json['enumTipoAtendimento'] as num).toInt(),
);

Map<String, dynamic> _$ReservaToJson(Reserva instance) => <String, dynamic>{
  'id': instance.id,
  'dataReserva': instance.data.toIso8601String(),
  'dataRetirada': instance.retirada?.toIso8601String(),
  'imagemReceita': instance.imagemReceita,
  'enumTipoAtendimento': instance.tipoAtendimento,
  'quantidade': instance.quantidade,
  'status': instance.status,
  'retirante': Reserva._toJsonRetirante(instance.retirante),
};
