// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_loco.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetalleLoco _$$_DetalleLocoFromJson(Map<String, dynamic> json) =>
    _$_DetalleLoco(
      estacion: json['estacion'] as String? ?? '',
      linea: json['linea'] as String? ?? '',
      loco: json['loco'] as int? ?? 0,
      color: json['color'] as String? ?? '',
      obsMarca: json['obs_marca'] as String? ?? '',
      marMante: json['mar_mante'] as String? ?? '',
    );

Map<String, dynamic> _$$_DetalleLocoToJson(_$_DetalleLoco instance) =>
    <String, dynamic>{
      'estacion': instance.estacion,
      'linea': instance.linea,
      'loco': instance.loco,
      'color': instance.color,
      'obs_marca': instance.obsMarca,
      'mar_mante': instance.marMante,
    };
