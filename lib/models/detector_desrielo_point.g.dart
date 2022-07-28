// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detector_desrielo_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetectorDesrieloPoint _$$_DetectorDesrieloPointFromJson(
        Map<String, dynamic> json) =>
    _$_DetectorDesrieloPoint(
      idDetector: json['id_detector'] as int? ?? 0,
      km: (json['km'] as num?)?.toDouble() ?? 0.0,
      ramal: json['ramal'] as String? ?? '',
      descripcion: json['descripcion'] as String? ?? '',
      canal: json['canal'] as int? ?? 0,
      habilitado: json['habilitado'] as String? ?? '',
      zonaDed: json['zona_ded'] as String? ?? '',
      idRadio: json['id_radio'] as int? ?? 0,
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_DetectorDesrieloPointToJson(
        _$_DetectorDesrieloPoint instance) =>
    <String, dynamic>{
      'id_detector': instance.idDetector,
      'km': instance.km,
      'ramal': instance.ramal,
      'descripcion': instance.descripcion,
      'canal': instance.canal,
      'habilitado': instance.habilitado,
      'zona_ded': instance.zonaDed,
      'id_radio': instance.idRadio,
      'lat': instance.lat,
      'lon': instance.lon,
    };
