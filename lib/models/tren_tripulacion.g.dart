// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tren_tripulacion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrenTripulacion _$$_TrenTripulacionFromJson(Map<String, dynamic> json) =>
    _$_TrenTripulacion(
      nroTren: json['nro_tren'] as int? ?? 0,
      nroTripulacion: json['nro_tripulacion'] as int? ?? 0,
      nomOper: json['nom_oper'] as String? ?? '',
      horaToma: json['hora_toma'] as String? ?? '',
      codrut: json['codrut'] as String? ?? '',
      tipoOperador: json['tipo_operador'] as String? ?? '',
    );

Map<String, dynamic> _$$_TrenTripulacionToJson(_$_TrenTripulacion instance) =>
    <String, dynamic>{
      'nro_tren': instance.nroTren,
      'nro_tripulacion': instance.nroTripulacion,
      'nom_oper': instance.nomOper,
      'hora_toma': instance.horaToma,
      'codrut': instance.codrut,
      'tipo_operador': instance.tipoOperador,
    };
