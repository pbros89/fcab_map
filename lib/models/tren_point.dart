import 'package:freezed_annotation/freezed_annotation.dart';

part 'tren_point.freezed.dart';
part 'tren_point.g.dart';

@freezed
class TrenPoint with _$TrenPoint {
  factory TrenPoint(
      {@JsonKey(name: 'nro_prog') required int nroProg,
      @JsonKey(name: 'nro_tren') required int nroTren,
      @JsonKey(name: 'hr_salida') required String hrSalida,
      @JsonKey(name: 'hr_llegada') required String hrLlegada,
      @JsonKey(name: 'nombre_tren') required int nombreTren,
      @JsonKey(name: 'sentido') required String sentido,
      @JsonKey(name: 'color') required String color,
      @JsonKey(name: 'evento_actual') required String eventoActual,
      @JsonKey(name: 'fecha_pos') required String fechaPos,
      @JsonKey(name: 'fecha_tren') required String fechaTren,
      @JsonKey(name: 'km') required double km,
      @JsonKey(name: 'velocidad') required int velocidad,
      @JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'utm_x') required double utmX,
      @JsonKey(name: 'utm_y') required double utmY,
      required double lat,
      required double lon}) = _TrenPoint;

  factory TrenPoint.fromJson(Map<String, dynamic> json) =>
      _$TrenPointFromJson(json);
}
