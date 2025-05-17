// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nova_reserva.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NovaReserva _$NovaReservaFromJson(Map<String, dynamic> json) => NovaReserva(
  usuarioId: json['usuarioId'] as String,
  medicamentoId: json['medicamentoId'] as String,
  data: DateTime.parse(json['dataReserva'] as String),
  imagemReceita: json['imagemReceita'] as String,
  tipoAtendimento: (json['enumTipoAtendimento'] as num).toInt(),
  status: (json['status'] as num).toInt(),
);

Map<String, dynamic> _$NovaReservaToJson(NovaReserva instance) =>
    <String, dynamic>{
      'usuarioId': instance.usuarioId,
      'medicamentoId': instance.medicamentoId,
      'dataReserva': instance.data.toIso8601String(),
      'imagemReceita': instance.imagemReceita,
      'enumTipoAtendimento': instance.tipoAtendimento,
      'status': instance.status,
    };
