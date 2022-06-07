// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_loco.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContadorLoco _$$_ContadorLocoFromJson(Map<String, dynamic> json) =>
    _$_ContadorLoco(
      estacion: json['estacion'] as String? ?? '',
      linea: json['linea'] as String? ?? '',
      color: json['color'] as String? ?? '',
      cant: json['cant'] as int? ?? 0,
      marMante: json['mar_mante'] as String? ?? '',
    );

Map<String, dynamic> _$$_ContadorLocoToJson(_$_ContadorLoco instance) =>
    <String, dynamic>{
      'estacion': instance.estacion,
      'linea': instance.linea,
      'color': instance.color,
      'cant': instance.cant,
      'mar_mante': instance.marMante,
    };
