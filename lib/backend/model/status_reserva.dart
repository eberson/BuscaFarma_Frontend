import 'package:json_annotation/json_annotation.dart';

enum StatusReserva {
  @JsonValue(0)
  Pendente,

  @JsonValue(1)
  Finalizada,

  @JsonValue(2)
  FaltaEstoque,

  @JsonValue(3)
  Indisponivel,
}
