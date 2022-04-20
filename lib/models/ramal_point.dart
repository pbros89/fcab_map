import 'package:freezed_annotation/freezed_annotation.dart';

part 'ramal_point.freezed.dart';
part 'ramal_point.g.dart';

@freezed
class RamalPoint with _$RamalPoint {
  factory RamalPoint(
      {@JsonKey(name: 'cod_ramal') required String codRamal,
      @JsonKey(name: 'utm_x') required double utmX,
      @JsonKey(name: 'utm_y') required double utmY,
      @JsonKey(name: 'kilometraje') required double kilometraje,
      @JsonKey(name: 'velocidad_max') required double velocidadMax,
      required double lat,
      required double lon}) = _RamalPoint;

  factory RamalPoint.fromJson(Map<String, dynamic> json) =>
      _$RamalPointFromJson(json);
}
