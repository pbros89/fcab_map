import 'package:freezed_annotation/freezed_annotation.dart';

part 'detalle_carro.freezed.dart';
part 'detalle_carro.g.dart';

@freezed
class DetalleCarro with _$DetalleCarro {
  factory DetalleCarro({
    @JsonKey(name: 'estacion', defaultValue: '') required String estacion,
    @JsonKey(name: 'linea', defaultValue: '') required String linea,
    @JsonKey(name: 'tipo_carro', defaultValue: '') required String tipoCarro,
    @JsonKey(name: 'cod_servicio', defaultValue: '') required String codServicio,
    @JsonKey(name: 'numero', defaultValue: '') required String numero,
    @JsonKey(name: 'marca_mante', defaultValue: 'SINESTADO') required String marcaMante,
    @JsonKey(name: 'color', defaultValue: '') required String color,
    @JsonKey(name: 'obs_marca', defaultValue: '') required String obsMante,
    @JsonKey(name: 'estado_carga', defaultValue: '') required String estadoCarga,
  }) = _DetalleCarro;

  factory DetalleCarro.fromJson(Map<String, dynamic> json) =>
      _$DetalleCarroFromJson(json);
}
