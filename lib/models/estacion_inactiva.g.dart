// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estacion_inactiva.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstacionInactiva _$$_EstacionInactivaFromJson(Map<String, dynamic> json) =>
    _$_EstacionInactiva(
      estacion: json['estacion'] as String? ?? '',
      fechaCrea: json['fecha_crea'] as String? ?? '',
      restriccion: json['restriccion'] as String? ?? '',
      usuarioCrea: json['usuario_crea'] as String? ?? '',
      tipo: json['tipo'] as String? ?? '',
      habilitado: json['habilitado'] as String? ?? '',
      chek: json['chek'] as int? ?? 0,
      automaticaMr: json['automatica_mr'] as String? ?? '',
    );

Map<String, dynamic> _$$_EstacionInactivaToJson(_$_EstacionInactiva instance) =>
    <String, dynamic>{
      'estacion': instance.estacion,
      'fecha_crea': instance.fechaCrea,
      'restriccion': instance.restriccion,
      'usuario_crea': instance.usuarioCrea,
      'tipo': instance.tipo,
      'habilitado': instance.habilitado,
      'chek': instance.chek,
      'automatica_mr': instance.automaticaMr,
    };
