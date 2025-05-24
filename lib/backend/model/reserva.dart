import 'package:buscafarma/backend/model/medicamento.dart';
import 'package:buscafarma/backend/model/status_reserva.dart';
import 'package:buscafarma/backend/model/tipo_atendimento.dart';
import 'package:buscafarma/backend/model/usuario.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reserva.g.dart';

@JsonSerializable()
class Reserva {
  final String id;

  @JsonKey(name: "dataReserva")
  final DateTime data;

  @JsonKey(name: "dataRetirada")
  final DateTime? retirada;

  final String imagemReceita;

  @JsonKey(name: "enumTipoAtendimento")
  final TipoAtendimento tipoAtendimento;

  final int? quantidade;

  final StatusReserva status;

  final String? retiranteNome;
  final String? retiranteCPF;

  final Usuario usuario;

  final Medicamento medicamento;

  Reserva(
    this.id,
    this.data,
    this.imagemReceita,
    this.quantidade,
    this.retirada,
    this.retiranteCPF,
    this.retiranteNome,
    this.status,
    this.tipoAtendimento,
    this.usuario,
    this.medicamento,
  );

  factory Reserva.fromJson(Map<String, dynamic> json) =>
      _$ReservaFromJson(json);

  Map<String, dynamic> toJson() => _$ReservaToJson(this);
}
