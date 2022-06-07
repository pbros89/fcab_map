// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'precaucion_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrecaucionLine _$$_PrecaucionLineFromJson(Map<String, dynamic> json) =>
    _$_PrecaucionLine(
      tipo: json['tipo'] as String? ?? '',
      codRamal: json['cod_ramal'] as String? ?? '',
      kmDesde: (json['km_desde'] as num?)?.toDouble() ?? 0.0,
      kmHasta: (json['km_hasta'] as num?)?.toDouble() ?? 0.0,
      numero: json['numero'] as int? ?? 0,
      velocidad: json['velocidad'] as int? ?? 0,
      causa: json['causa'] as String? ?? '',
      observacion: json['observacion'] as String? ?? '',
      activa: json['activa'] as String? ?? '',
      factiva: json['factiva'] as String? ?? '',
      sentido: json['sentido'] as String? ?? '',
      listPoints: (json['listPoints'] as List<dynamic>?)
              ?.map((e) => RamalPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PrecaucionLineToJson(_$_PrecaucionLine instance) =>
    <String, dynamic>{
      'tipo': instance.tipo,
      'cod_ramal': instance.codRamal,
      'km_desde': instance.kmDesde,
      'km_hasta': instance.kmHasta,
      'numero': instance.numero,
      'velocidad': instance.velocidad,
      'causa': instance.causa,
      'observacion': instance.observacion,
      'activa': instance.activa,
      'factiva': instance.factiva,
      'sentido': instance.sentido,
      'listPoints': instance.listPoints,
    };
