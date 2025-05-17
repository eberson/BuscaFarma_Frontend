import 'package:json_annotation/json_annotation.dart';

part 'retirante.g.dart';

@JsonSerializable()
class Retirante {
  final String nome;
  final String cpf;

  Retirante({required this.nome, required this.cpf});

  factory Retirante.fromJson(Map<String, dynamic> json) =>
      _$RetiranteFromJson(json);

  Map<String, dynamic> toJson() => _$RetiranteToJson(this);
}