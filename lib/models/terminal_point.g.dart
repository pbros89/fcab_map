// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TerminalPoint _$$_TerminalPointFromJson(Map<String, dynamic> json) =>
    _$_TerminalPoint(
      codRamal: json['cod_ramal'] as String,
      codEstacion: json['cod_estacion'] as String,
      kmIni: (json['kil_inicio'] as num).toDouble(),
      kmFin: (json['kil_final'] as num).toDouble(),
      utmX: (json['utm_x'] as num).toDouble(),
      utmY: (json['utm_y'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TerminalPointToJson(_$_TerminalPoint instance) =>
    <String, dynamic>{
      'cod_ramal': instance.codRamal,
      'cod_estacion': instance.codEstacion,
      'kil_inicio': instance.kmIni,
      'kil_final': instance.kmFin,
      'utm_x': instance.utmX,
      'utm_y': instance.utmY,
      'lat': instance.lat,
      'lon': instance.lon,
    };
