
import 'package:json_annotation/json_annotation.dart';

part 'reset_senha.g.dart';

@JsonSerializable()
class ResetSenha {
  final String chaveResetSenha;
  final String novaSenha;
  final String confirmarNovaSenha;

  ResetSenha({
    required this.chaveResetSenha,
    required this.novaSenha,
    required this.confirmarNovaSenha,
  });

  factory ResetSenha.fromJson(Map<String, dynamic> json) => _$ResetSenhaFromJson(json);

  Map<String, dynamic> toJson() => _$ResetSenhaToJson(this);
}
