import 'package:json_annotation/json_annotation.dart';

enum Perfil {
  @JsonValue(0)
  Backoffice,

  @JsonValue(1)
  Usuario,
}
