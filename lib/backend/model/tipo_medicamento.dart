import 'package:json_annotation/json_annotation.dart';

enum EnumTipoMedicamento {
  @JsonValue(1)
  AutoCusto,

  @JsonValue(2)
  Comum,
}
