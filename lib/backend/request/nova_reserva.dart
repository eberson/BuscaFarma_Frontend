import 'package:buscafarma/backend/model/tipo_atendimento.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nova_reserva.g.dart';

@JsonSerializable()
class NovaReserva {
  final String usuarioId;
  final String medicamentoId;

  @JsonKey(name: "dataReserva")
  final DateTime data;

  final String imagemReceita;

  @JsonKey(name: "enumTipoAtendimento")
  final TipoAtendimento tipoAtendimento;

  NovaReserva({
    required this.usuarioId,
    required this.medicamentoId,
    required this.data,
    required this.imagemReceita,
    required this.tipoAtendimento,
  });

  factory NovaReserva.fromJson(Map<String, dynamic> json) =>
      _$NovaReservaFromJson(json);

  Map<String, dynamic> toJson() => _$NovaReservaToJson(this);
}
