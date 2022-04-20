// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tren_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrenPoint _$$_TrenPointFromJson(Map<String, dynamic> json) => _$_TrenPoint(
      nroProg: json['nro_prog'] as int,
      nroTren: json['nro_tren'] as int,
      hrSalida: json['hr_salida'] as String,
      hrLlegada: json['hr_llegada'] as String,
      nombreTren: json['nombre_tren'] as int,
      sentido: json['sentido'] as String,
      color: json['color'] as String,
      eventoActual: json['evento_actual'] as String,
      fechaPos: json['fecha_pos'] as String,
      fechaTren: json['fecha_tren'] as String,
      km: (json['km'] as num).toDouble(),
      velocidad: json['velocidad'] as int,
      codRamal: json['cod_ramal'] as String,
      utmX: (json['utm_x'] as num).toDouble(),
      utmY: (json['utm_y'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TrenPointToJson(_$_TrenPoint instance) =>
    <String, dynamic>{
      'nro_prog': instance.nroProg,
      'nro_tren': instance.nroTren,
      'hr_salida': instance.hrSalida,
      'hr_llegada': instance.hrLlegada,
      'nombre_tren': instance.nombreTren,
      'sentido': instance.sentido,
      'color': instance.color,
      'evento_actual': instance.eventoActual,
      'fecha_pos': instance.fechaPos,
      'fecha_tren': instance.fechaTren,
      'km': instance.km,
      'velocidad': instance.velocidad,
      'cod_ramal': instance.codRamal,
      'utm_x': instance.utmX,
      'utm_y': instance.utmY,
      'lat': instance.lat,
      'lon': instance.lon,
    };
