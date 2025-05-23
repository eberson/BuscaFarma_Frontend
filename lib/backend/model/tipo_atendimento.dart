import 'package:json_annotation/json_annotation.dart';

enum TipoAtendimento {
  @JsonValue(1)
  Atendida,

  @JsonValue(2)
  NaoAtendida,

  @JsonValue(3)
  Cancelada,
}
