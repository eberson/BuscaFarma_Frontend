
import 'package:json_annotation/json_annotation.dart';

part 'credencial.g.dart';

@JsonSerializable()
class Credencial {
  final String login;
  final String senha;

  Credencial({required this.login, required this.senha});

  factory Credencial.fromJson(Map<String, dynamic> json) =>
      _$CredencialFromJson(json);

  Map<String, dynamic> toJson() => _$CredencialToJson(this);
}
