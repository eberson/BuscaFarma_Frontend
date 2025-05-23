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

  @JsonKey(
    fromJson: _getCategoriaFromJson,
    toJson: _toJsonCategoria,
  )
  final Categoria categoria;

  Medicamento(
    this.id,
    this.nomeComercial,
    this.nomeQuimico,
    this.descricao,
    this.imagem,
    this.tipoMedicamento,
    this.unidadeMedida,
    this.categoria,
  );

  factory Medicamento.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoFromJson(json);

  Map<String, dynamic> toJson() => _$MedicamentoToJson(this);

  static Categoria _getCategoriaFromJson(Map<String, dynamic> json) {
    return Categoria(
      json['categoriaId'] as String,
      json['categoriaDescricao'] as String,
    );
  }

  static Map<String, dynamic> _toJsonCategoria(Categoria categoria) {
    return {
      'categoriaId': categoria.id,
      'categoriaDescricao': categoria.descricao,
    };
  }
}
