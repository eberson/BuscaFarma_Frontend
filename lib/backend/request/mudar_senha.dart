
import 'package:json_annotation/json_annotation.dart';

part 'mudar_senha.g.dart';

@JsonSerializable()
class MudarSenha {
  final String senha;
  final String novaSenha;
  final String confirmarNovaSenha;

  MudarSenha({
    required this.senha,
    required this.novaSenha,
    required this.confirmarNovaSenha,
  });

  factory MudarSenha.fromJson(Map<String, dynamic> json) => _$MudarSenhaFromJson(json);

  Map<String, dynamic> toJson() => _$MudarSenhaToJson(this);
}