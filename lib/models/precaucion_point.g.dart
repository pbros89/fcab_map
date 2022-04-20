// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precaucion_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrecaucionPoint _$$_PrecaucionPointFromJson(Map<String, dynamic> json) =>
    _$_PrecaucionPoint(
      origen: json['origen'] as String,
      codRamal: json['cod_ramal'] as String,
      kmDesde: (json['km_desde'] as num).toDouble(),
      kmHasta: (json['km_hasta'] as num).toDouble(),
      utmXDesde: (json['utm_x_desde'] as num).toDouble(),
      utmYDesde: (json['utm_y_desde'] as num).toDouble(),
      utmXHasta: (json['utm_x_hasta'] as num).toDouble(),
      utmYHasta: (json['utm_y_hasta'] as num).toDouble(),
      latDesde: (json['lat_desde'] as num).toDouble(),
      lonDesde: (json['lon_desde'] as num).toDouble(),
      latHasta: (json['lat_hasta'] as num).toDouble(),
      lonHasta: (json['lon_hasta'] as num).toDouble(),
      listPoints: (json['listPoints'] as List<dynamic>?)
              ?.map((e) => RamalPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PrecaucionPointToJson(_$_PrecaucionPoint instance) =>
    <String, dynamic>{
      'origen': instance.origen,
      'cod_ramal': instance.codRamal,
      'km_desde': instance.kmDesde,
      'km_hasta': instance.kmHasta,
      'utm_x_desde': instance.utmXDesde,
      'utm_y_desde': instance.utmYDesde,
      'utm_x_hasta': instance.utmXHasta,
      'utm_y_hasta': instance.utmYHasta,
      'lat_desde': instance.latDesde,
      'lon_desde': instance.lonDesde,
      'lat_hasta': instance.latHasta,
      'lon_hasta': instance.lonHasta,
      'listPoints': instance.listPoints,
    };
