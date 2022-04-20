import 'package:freezed_annotation/freezed_annotation.dart';

part 'estacion_point.freezed.dart';
part 'estacion_point.g.dart';

@freezed
class EstacionPoint with _$EstacionPoint {
  factory EstacionPoint({
    @JsonKey(name: 'cod_ramal') required String codRamal,
    @JsonKey(name: 'cod_estacion') required String codEstacion,
    @JsonKey(name: 'km_ini') required double kmIni,
    @JsonKey(name: 'km_fin') required double kmFin,
    @JsonKey(name: 'km_posicionamiento') required double kmPos,
    @JsonKey(name: 'utm_x') required double utmX,
    @JsonKey(name: 'utm_y') required double utmY,
    required double lat,
    required double lon,
  }) = _EstacionPoint;

  factory EstacionPoint.fromJson(Map<String, dynamic> json) =>
      _$EstacionPointFromJson(json);
}
