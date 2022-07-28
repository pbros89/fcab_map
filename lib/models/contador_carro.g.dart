// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contador_carro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContadorCarro _$$_ContadorCarroFromJson(Map<String, dynamic> json) =>
    _$_ContadorCarro(
      estacion: json['estacion'] as String? ?? '',
      linea: json['linea'] as String? ?? '',
      tipoCarro: json['tipo_carro'] as String? ?? '',
      cant: json['cant'] as int? ?? 0,
      codServicio: json['cod_servicio'] as String? ?? '',
      marcaMante: json['marca_mante'] as String? ?? 'SINESTADO',
      color: json['color'] as String? ?? 'VERDER',
      estadoCarga: json['estado_carga'] as String? ?? '',
    );

Map<String, dynamic> _$$_ContadorCarroToJson(_$_ContadorCarro instance) =>
    <String, dynamic>{
      'estacion': instance.estacion,
      'linea': instance.linea,
      'tipo_carro': instance.tipoCarro,
      'cant': instance.cant,
      'cod_servicio': instance.codServicio,
      'marca_mante': instance.marcaMante,
      'color': instance.color,
      'estado_carga': instance.estadoCarga,
    };
