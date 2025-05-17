import 'package:json_annotation/json_annotation.dart';

part 'medicamento.g.dart';

@JsonSerializable()
class Medicamento {
  final String id;
  final String nomeComercial;
  final String nomeQuimico;
  final String descricao;
  final String imagem;
  final int tipoMedicamento;
  final int unidadeMedida;
  final String categoriaId;

  Medicamento(
    this.id,
    this.nomeComercial,
    this.nomeQuimico,
    this.descricao,
    this.imagem,
    this.tipoMedicamento,
    this.unidadeMedida,
    this.categoriaId,
  );

  factory Medicamento.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoFromJson(json);

  Map<String, dynamic> toJson() => _$MedicamentoToJson(this);
}
