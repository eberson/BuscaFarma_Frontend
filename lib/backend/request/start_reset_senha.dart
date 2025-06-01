import 'package:json_annotation/json_annotation.dart';

part 'start_reset_senha.g.dart';

@JsonSerializable()
class StartResetSenha {
  final String email;

  StartResetSenha(this.email);

  factory StartResetSenha.fromJson(Map<String, dynamic> json) => _$StartResetSenhaFromJson(json);

  Map<String, dynamic> toJson() => _$StartResetSenhaToJson(this);
}