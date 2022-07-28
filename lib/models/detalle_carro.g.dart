// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_carro.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetalleCarro _$$_DetalleCarroFromJson(Map<String, dynamic> json) =>
    _$_DetalleCarro(
      estacion: json['estacion'] as String? ?? '',
      linea: json['linea'] as String? ?? '',
      tipoCarro: json['tipo_carro'] as String? ?? '',
      codServicio: json['cod_servicio'] as String? ?? '',
      numero: json['numero'] as String? ?? '',
      marcaMante: json['marca_mante'] as String? ?? 'SINESTADO',
      color: json['color'] as String? ?? '',
      obsMante: json['obs_marca'] as String? ?? '',
      estadoCarga: json['estado_carga'] as String? ?? '',
    );

Map<String, dynamic> _$$_DetalleCarroToJson(_$_DetalleCarro instance) =>
    <String, dynamic>{
      'estacion': instance.estacion,
      'linea': instance.linea,
      'tipo_carro': instance.tipoCarro,
      'cod_servicio': instance.codServicio,
      'numero': instance.numero,
      'marca_mante': instance.marcaMante,
      'color': instance.color,
      'obs_marca': instance.obsMante,
      'estado_carga': instance.estadoCarga,
    };
