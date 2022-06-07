// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tren_mr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrenMr _$$_TrenMrFromJson(Map<String, dynamic> json) => _$_TrenMr(
      nrotrenmr: json['nrotrenmr'] as int? ?? 0,
      tipomr: json['tipomr'] as String? ?? '',
      numero: json['numero'] as String? ?? '',
      nummr: json['nummr'] as String? ?? '',
      modelomr: json['modelomr'] as String? ?? '',
      tonnetasmr: (json['tonnetasmr'] as num?)?.toDouble() ?? 0.0,
      tonbrutasmr: (json['tonbrutasmr'] as num?)?.toDouble() ?? 0.0,
      estadomr: json['estadomr'] as String? ?? '',
      marcamr: json['marcamr'] as int? ?? 0,
      activarmr: json['activarmr'] as String? ?? '',
      postrenmr: json['postrenmr'] as int? ?? 0,
      largomr: (json['largomr'] as num?)?.toDouble() ?? 0.0,
      cargado: json['cargado'] as int? ?? 0,
      vacio: json['vacio'] as int? ?? 0,
      locoEmpuje: json['locoEmpuje'] as String? ?? '',
      descmarca: json['descmarca'] as String? ?? '',
      ssgmr: json['ssgmr'] as String? ?? '',
      ssxamr: json['ssxamr'] as String? ?? '',
      solicitudmr: json['solicitudmr'] as int? ?? 0,
      nroGuia: json['nroGuia'] as String? ?? '',
      codProducto: json['codProducto'] as String? ?? '',
      sectorOrigen: json['sectorOrigen'] as String? ?? '',
      sectorDestino: json['sectorDestino'] as String? ?? '',
    );

Map<String, dynamic> _$$_TrenMrToJson(_$_TrenMr instance) => <String, dynamic>{
      'nrotrenmr': instance.nrotrenmr,
      'tipomr': instance.tipomr,
      'numero': instance.numero,
      'nummr': instance.nummr,
      'modelomr': instance.modelomr,
      'tonnetasmr': instance.tonnetasmr,
      'tonbrutasmr': instance.tonbrutasmr,
      'estadomr': instance.estadomr,
      'marcamr': instance.marcamr,
      'activarmr': instance.activarmr,
      'postrenmr': instance.postrenmr,
      'largomr': instance.largomr,
      'cargado': instance.cargado,
      'vacio': instance.vacio,
      'locoEmpuje': instance.locoEmpuje,
      'descmarca': instance.descmarca,
      'ssgmr': instance.ssgmr,
      'ssxamr': instance.ssxamr,
      'solicitudmr': instance.solicitudmr,
      'nroGuia': instance.nroGuia,
      'codProducto': instance.codProducto,
      'sectorOrigen': instance.sectorOrigen,
      'sectorDestino': instance.sectorDestino,
    };
