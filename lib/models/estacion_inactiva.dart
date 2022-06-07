import 'package:freezed_annotation/freezed_annotation.dart';

part 'estacion_inactiva.freezed.dart';
part 'estacion_inactiva.g.dart';

@freezed
class EstacionInactiva with _$EstacionInactiva {
  factory EstacionInactiva({
    @JsonKey(name: 'estacion', defaultValue: '') required String estacion,
    @JsonKey(name: 'fecha_crea', defaultValue: '') required String fechaCrea,
    @JsonKey(name: 'restriccion', defaultValue: '') required String restriccion,
    @JsonKey(name: 'usuario_crea', defaultValue: '') required String usuarioCrea,
    @JsonKey(name: 'tipo', defaultValue: '') required String tipo,
    @JsonKey(name: 'habilitado', defaultValue: '') required String habilitado,
    @JsonKey(name: 'chek', defaultValue: 0) required int chek,
    @JsonKey(name: 'automatica_mr', defaultValue: '') required String automaticaMr,
  }) = _EstacionInactiva;

  factory EstacionInactiva.fromJson(Map<String, dynamic> json) =>
      _$EstacionInactivaFromJson(json);
}
