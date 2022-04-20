import 'package:fcab_map/models/ramal_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'precaucion_point.freezed.dart';
part 'precaucion_point.g.dart';

@freezed
class PrecaucionPoint with _$PrecaucionPoint {
  factory PrecaucionPoint(
      {required String origen,
      @JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'km_desde') required double kmDesde,
      @JsonKey(name: 'km_hasta') required double kmHasta,
      @JsonKey(name: 'utm_x_desde') required double utmXDesde,
      @JsonKey(name: 'utm_y_desde') required double utmYDesde,
      @JsonKey(name: 'utm_x_hasta') required double utmXHasta,
      @JsonKey(name: 'utm_y_hasta') required double utmYHasta,
      @JsonKey(name: 'lat_desde') required double latDesde,
      @JsonKey(name: 'lon_desde') required double lonDesde,
      @JsonKey(name: 'lat_hasta') required double latHasta,
      @JsonKey(name: 'lon_hasta') required double lonHasta,
      @Default([]) List<RamalPoint> listPoints}) = _PrecaucionPoint;

  factory PrecaucionPoint.fromJson(Map<String, dynamic> json) =>
      _$PrecaucionPointFromJson(json);
}
