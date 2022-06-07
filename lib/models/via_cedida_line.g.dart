// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'via_cedida_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViaCedidaLine _$$_ViaCedidaLineFromJson(Map<String, dynamic> json) =>
    _$_ViaCedidaLine(
      codViaCedida: json['cod_via_cedida'] as int? ?? 0,
      ramalOrigen: json['ramal_origen'] as String? ?? '',
      fecIni: json['fec_ini'] as String? ?? '',
      kmIni: json['km_ini'] as int? ?? 0,
      kmFin: json['km_fin'] as int? ?? 0,
      descripcion: json['descripcion'] as String? ?? '',
      usrResponsable: json['usr_responsable'] as String? ?? '',
      usrCreador: json['usr_creador'] as String? ?? '',
      estadoVc: json['estado_vc'] as String? ?? '',
      fecFinEstimada: json['fec_fin_estimada'] as String? ?? '',
      cruzeta: json['cruzeta'] as String? ?? '',
      numeroViaCedida: json['numero_via_cedida'] as int? ?? 0,
      ramalPoints: (json['ramalPoints'] as List<dynamic>?)
              ?.map((e) => RamalPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ViaCedidaLineToJson(_$_ViaCedidaLine instance) =>
    <String, dynamic>{
      'cod_via_cedida': instance.codViaCedida,
      'ramal_origen': instance.ramalOrigen,
      'fec_ini': instance.fecIni,
      'km_ini': instance.kmIni,
      'km_fin': instance.kmFin,
      'descripcion': instance.descripcion,
      'usr_responsable': instance.usrResponsable,
      'usr_creador': instance.usrCreador,
      'estado_vc': instance.estadoVc,
      'fec_fin_estimada': instance.fecFinEstimada,
      'cruzeta': instance.cruzeta,
      'numero_via_cedida': instance.numeroViaCedida,
      'ramalPoints': instance.ramalPoints,
    };
