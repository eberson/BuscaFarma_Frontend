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
  json['retiranteCPF'] as String?,
  json['retiranteNome'] as String?,
  $enumDecode(_$StatusReservaEnumMap, json['status']),
  $enumDecode(_$TipoAtendimentoEnumMap, json['enumTipoAtendimento']),
  Usuario.fromJson(json['usuario'] as Map<String, dynamic>),
  Medicamento.fromJson(json['medicamento'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReservaToJson(Reserva instance) => <String, dynamic>{
  'id': instance.id,
  'dataReserva': instance.data.toIso8601String(),
  'dataRetirada': instance.retirada?.toIso8601String(),
  'imagemReceita': instance.imagemReceita,
  'enumTipoAtendimento': _$TipoAtendimentoEnumMap[instance.tipoAtendimento]!,
  'quantidade': instance.quantidade,
  'status': _$StatusReservaEnumMap[instance.status]!,
  'retiranteNome': instance.retiranteNome,
  'retiranteCPF': instance.retiranteCPF,
  'usuario': instance.usuario,
  'medicamento': instance.medicamento,
};

const _$StatusReservaEnumMap = {
  StatusReserva.Pendente: 0,
  StatusReserva.Finalizada: 1,
  StatusReserva.FaltaEstoque: 2,
  StatusReserva.Indisponivel: 3,
};

const _$TipoAtendimentoEnumMap = {
  TipoAtendimento.Atendida: 1,
  TipoAtendimento.NaoAtendida: 2,
  TipoAtendimento.Cancelada: 3,
};
