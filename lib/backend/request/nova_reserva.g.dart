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
  tipoAtendimento: $enumDecode(
    _$TipoAtendimentoEnumMap,
    json['enumTipoAtendimento'],
  ),
);

Map<String, dynamic> _$NovaReservaToJson(
  NovaReserva instance,
) => <String, dynamic>{
  'usuarioId': instance.usuarioId,
  'medicamentoId': instance.medicamentoId,
  'dataReserva': instance.data.toIso8601String(),
  'imagemReceita': instance.imagemReceita,
  'enumTipoAtendimento': _$TipoAtendimentoEnumMap[instance.tipoAtendimento]!,
};

const _$TipoAtendimentoEnumMap = {
  TipoAtendimento.Atendida: 1,
  TipoAtendimento.NaoAtendida: 2,
  TipoAtendimento.Cancelada: 3,
};
