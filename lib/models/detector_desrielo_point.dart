import 'package:freezed_annotation/freezed_annotation.dart';

part 'detector_desrielo_point.freezed.dart';
part 'detector_desrielo_point.g.dart';

@freezed
class DetectorDesrieloPoint with _$DetectorDesrieloPoint {
  factory DetectorDesrieloPoint({
    @JsonKey(name: 'id_detector', defaultValue: 0) required int idDetector,
    @JsonKey(name: 'km', defaultValue: 0.0)required double km,
    @JsonKey(name: 'ramal', defaultValue: '')required String ramal,
    @JsonKey(name: 'descripcion', defaultValue: '')required String descripcion,
    @JsonKey(name: 'canal', defaultValue: 0)required int canal,
    @JsonKey(name: 'habilitado', defaultValue: '')required String habilitado,
    @JsonKey(name: 'zona_ded', defaultValue: '')required String zonaDed,
    @JsonKey(name: 'id_radio', defaultValue: 0)required int idRadio,
    @JsonKey(name: 'lat', defaultValue: 0.0) required double lat,
    @JsonKey(name: 'lon', defaultValue: 0.0) required double lon,
  }) = _DetectorDesrieloPoint;

  factory DetectorDesrieloPoint.fromJson(Map<String, dynamic> json) =>
      _$DetectorDesrieloPointFromJson(json);
}
