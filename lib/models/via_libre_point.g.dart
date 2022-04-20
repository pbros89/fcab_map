// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'via_libre_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViaLibrePoint _$$_ViaLibrePointFromJson(Map<String, dynamic> json) =>
    _$_ViaLibrePoint(
      nroVl: json['nro_vl'] as int,
      fechaVl: json['fecha_vl'] as String,
      nroProgTrenes: json['nro_prog_trenes'] as int,
      nroTren: json['nro_tren'] as int,
      fechaTren: json['fecha_tren'] as String,
      ramalOrigen: json['ramal_origen'] as String,
      estOrigen: json['est_origen'] as String,
      kmIni: (json['km_ini'] as num).toDouble(),
      ramalDestino: json['ramal_destino'] as String,
      kmFin: json['km_fin'] as String,
      estadoVl: json['estado_vl'] as String? ?? "",
      fechaSalida: json['fecha_salida'] as String? ?? "",
      opResponsable: json['op_responsable'] as int? ?? 0,
      ramalPos: json['ramal_pos'] as String? ?? "",
      estPos: json['est_pos'] as String? ?? "",
      kmPos: (json['km_pos'] as num?)?.toDouble() ?? 0.0,
      fechaPosVl: json['fecha_pos_vl'] as String? ?? "",
      observacion: json['observacion'] as String? ?? "",
      codUsr: json['cod_usr'] as String? ?? "",
      vlFerronor: json['vl_ferronor'] as String? ?? "",
      ordenDisco: json['orden_disco'] as String? ?? "",
      maniobra: json['maniobra'] as String? ?? "",
      cruza: json['cruza'] as String? ?? "",
      fechaCreacion: json['fecha_creacion'] as String? ?? "",
      listPoints: (json['listPoints'] as List<dynamic>?)
              ?.map((e) => RamalPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ViaLibrePointToJson(_$_ViaLibrePoint instance) =>
    <String, dynamic>{
      'nro_vl': instance.nroVl,
      'fecha_vl': instance.fechaVl,
      'nro_prog_trenes': instance.nroProgTrenes,
      'nro_tren': instance.nroTren,
      'fecha_tren': instance.fechaTren,
      'ramal_origen': instance.ramalOrigen,
      'est_origen': instance.estOrigen,
      'km_ini': instance.kmIni,
      'ramal_destino': instance.ramalDestino,
      'km_fin': instance.kmFin,
      'estado_vl': instance.estadoVl,
      'fecha_salida': instance.fechaSalida,
      'op_responsable': instance.opResponsable,
      'ramal_pos': instance.ramalPos,
      'est_pos': instance.estPos,
      'km_pos': instance.kmPos,
      'fecha_pos_vl': instance.fechaPosVl,
      'observacion': instance.observacion,
      'cod_usr': instance.codUsr,
      'vl_ferronor': instance.vlFerronor,
      'orden_disco': instance.ordenDisco,
      'maniobra': instance.maniobra,
      'cruza': instance.cruza,
      'fecha_creacion': instance.fechaCreacion,
      'listPoints': instance.listPoints,
    };
