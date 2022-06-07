import 'package:freezed_annotation/freezed_annotation.dart';

part 'terminal_point.freezed.dart';
part 'terminal_point.g.dart';

@freezed
class TerminalPoint with _$TerminalPoint {
  factory TerminalPoint({
    @JsonKey(name: 'cod_ramal') required String codRamal,
    @JsonKey(name: 'cod_estacion') required String codEstacion,
    @JsonKey(name: 'kil_inicio') required double kmIni,
    @JsonKey(name: 'kil_final') required double kmFin,
    @JsonKey(name: 'utm_x') required double utmX,
    @JsonKey(name: 'utm_y') required double utmY,
    required double lat,
    required double lon,
  }) = _TerminalPoint;

  factory TerminalPoint.fromJson(Map<String, dynamic> json) =>
      _$TerminalPointFromJson(json);
}
