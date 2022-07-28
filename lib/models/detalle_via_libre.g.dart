// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detalle_via_libre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetalleViaLibre _$$_DetalleViaLibreFromJson(Map<String, dynamic> json) =>
    _$_DetalleViaLibre(
      nroPrograma: json['nro_programa'] as int? ?? 0,
      nroTren: json['nro_tren'] as int? ?? 0,
      clave: json['clave'] as int? ?? 0,
      fechaVl: json['fecha_vl'] as String? ?? '',
      hrSolicita: json['hr_solicita'] as String? ?? '',
      horaVl: json['hora_vl'] as String? ?? '',
      hrConfirma: json['hr_confirma'] as String? ?? '',
      reintentos: json['reintentos'] as int? ?? 0,
      pkNroVl: json['pk_nro_vl'] as int? ?? 0,
      fkNroTren: json['fk_nro_tren'] as int? ?? 0,
      nroLoco: json['nro_loco'] as int? ?? 0,
      pkFechaVl: json['pk_fecha_vl'] as String? ?? '',
      origenVl: json['origen_vl'] as String? ?? '',
      hrSalidaVl: json['hr_salida_vl'] as String? ?? '',
      destinoVl: json['destino_vl'] as String? ?? '',
      estadoVl: json['estado_vl'] as String? ?? '',
      observacion: json['observacion'] as String? ?? '',
      ordenDisco: json['orden_disco'] as String? ?? '',
      maniobra: json['maniobra'] as String? ?? '',
      codUsr: json['cod_usr'] as String? ?? '',
      operador: json['operador'] as String? ?? '',
      idSolicitud: json['id_solicitud'] as int? ?? 0,
      vlFerronor: json['vl_ferronor'] as int? ?? 0,
    );

Map<String, dynamic> _$$_DetalleViaLibreToJson(_$_DetalleViaLibre instance) =>
    <String, dynamic>{
      'nro_programa': instance.nroPrograma,
      'nro_tren': instance.nroTren,
      'clave': instance.clave,
      'fecha_vl': instance.fechaVl,
      'hr_solicita': instance.hrSolicita,
      'hora_vl': instance.horaVl,
      'hr_confirma': instance.hrConfirma,
      'reintentos': instance.reintentos,
      'pk_nro_vl': instance.pkNroVl,
      'fk_nro_tren': instance.fkNroTren,
      'nro_loco': instance.nroLoco,
      'pk_fecha_vl': instance.pkFechaVl,
      'origen_vl': instance.origenVl,
      'hr_salida_vl': instance.hrSalidaVl,
      'destino_vl': instance.destinoVl,
      'estado_vl': instance.estadoVl,
      'observacion': instance.observacion,
      'orden_disco': instance.ordenDisco,
      'maniobra': instance.maniobra,
      'cod_usr': instance.codUsr,
      'operador': instance.operador,
      'id_solicitud': instance.idSolicitud,
      'vl_ferronor': instance.vlFerronor,
    };
