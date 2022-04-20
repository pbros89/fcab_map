// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ramal_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RamalPoint _$$_RamalPointFromJson(Map<String, dynamic> json) =>
    _$_RamalPoint(
      codRamal: json['cod_ramal'] as String,
      utmX: (json['utm_x'] as num).toDouble(),
      utmY: (json['utm_y'] as num).toDouble(),
      kilometraje: (json['kilometraje'] as num).toDouble(),
      velocidadMax: (json['velocidad_max'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RamalPointToJson(_$_RamalPoint instance) =>
    <String, dynamic>{
      'cod_ramal': instance.codRamal,
      'utm_x': instance.utmX,
      'utm_y': instance.utmY,
      'kilometraje': instance.kilometraje,
      'velocidad_max': instance.velocidadMax,
      'lat': instance.lat,
      'lon': instance.lon,
    };
