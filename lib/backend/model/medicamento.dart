import 'package:buscafarma/backend/model/categoria.dart';
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

  @JsonKey(name: "categoriaId")
  final String responseCategoriaId;

  @JsonKey(name: "categoriaDescricao")
  final String responseCategoriaDescricao;

  Medicamento(
    this.id,
    this.nomeComercial,
    this.nomeQuimico,
    this.descricao,
    this.imagem,
    this.tipoMedicamento,
    this.unidadeMedida,
    this.responseCategoriaId,
    this.responseCategoriaDescricao,
  );

  factory Medicamento.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoFromJson(json);

  Map<String, dynamic> toJson() => _$MedicamentoToJson(this);

  Categoria get categoria =>
      Categoria(responseCategoriaId, responseCategoriaDescricao);
}
