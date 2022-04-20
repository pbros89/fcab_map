// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estacion_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstacionPoint _$$_EstacionPointFromJson(Map<String, dynamic> json) =>
    _$_EstacionPoint(
      codRamal: json['cod_ramal'] as String,
      codEstacion: json['cod_estacion'] as String,
      kmIni: (json['km_ini'] as num).toDouble(),
      kmFin: (json['km_fin'] as num).toDouble(),
      kmPos: (json['km_posicionamiento'] as num).toDouble(),
      utmX: (json['utm_x'] as num).toDouble(),
      utmY: (json['utm_y'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$_EstacionPointToJson(_$_EstacionPoint instance) =>
    <String, dynamic>{
      'cod_ramal': instance.codRamal,
      'cod_estacion': instance.codEstacion,
      'km_ini': instance.kmIni,
      'km_fin': instance.kmFin,
      'km_posicionamiento': instance.kmPos,
      'utm_x': instance.utmX,
      'utm_y': instance.utmY,
      'lat': instance.lat,
      'lon': instance.lon,
    };
