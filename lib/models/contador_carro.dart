import 'package:freezed_annotation/freezed_annotation.dart';

part 'contador_carro.freezed.dart';
part 'contador_carro.g.dart';

@freezed
class ContadorCarro with _$ContadorCarro {
  factory ContadorCarro({
    @JsonKey(name: 'estacion', defaultValue: '') required String estacion,
    @JsonKey(name: 'linea', defaultValue: '') required String linea,
    @JsonKey(name: 'cant', defaultValue: 0) required int cant,
    @JsonKey(name: 'cod_servicio', defaultValue: '') required String codServicio,
    @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO') required String marcaMante,
    @JsonKey(name: 'color', defaultValue: 'VERDER') required String color,
    @JsonKey(name: 'estado_carga', defaultValue: '') required String estadoCarga,
  }) = _ContadorCarro;

  factory ContadorCarro.fromJson(Map<String, dynamic> json) =>
      _$ContadorCarroFromJson(json);
}
