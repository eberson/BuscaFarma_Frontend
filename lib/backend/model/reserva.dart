import 'package:buscafarma/backend/model/retirante.dart';
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
  final int tipoAtendimento;

  final int? quantidade;

  final int status;

  @JsonKey(
    fromJson: _fromJsonRetirante,
    toJson: _toJsonRetirante,
  )
  final Retirante retirante;

  Reserva(
    this.id,
    this.data,
    this.imagemReceita,
    this.quantidade,
    this.retirada,
    this.retirante,
    this.status,
    this.tipoAtendimento,
  );

  factory Reserva.fromJson(Map<String, dynamic> json) =>
      _$ReservaFromJson(json);

  Map<String, dynamic> toJson() => _$ReservaToJson(this);

  // Conversão personalizada
  static Retirante _fromJsonRetirante(Map<String, dynamic> json) {
    return Retirante(
      nome: json['retiranteNome'] as String,
      cpf: json['retiranteCPF'] as String,
    );
  }

  static Map<String, dynamic> _toJsonRetirante(Retirante retirante) {
    return {
      'retiranteNome': retirante.nome,
      'retiranteCPF': retirante.cpf,
    };
  }
}
