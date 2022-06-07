// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_acido.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TerminalAcido _$$_TerminalAcidoFromJson(Map<String, dynamic> json) =>
    _$_TerminalAcido(
      codServicio: json['pfk_cod_servicio'] as String,
      codTerminal: json['pfk_cod_terminal'] as String,
      tipoTerminal: json['pfk_tipo_terminal'] as String,
      codEstanque: json['pfk_cod_estanque'] as String,
      fechaControl: json['pk_fecha_control'] as String,
      nivelAcido: (json['nivel_acido'] as num).toDouble(),
      tonAcido: (json['ton_acido'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TerminalAcidoToJson(_$_TerminalAcido instance) =>
    <String, dynamic>{
      'pfk_cod_servicio': instance.codServicio,
      'pfk_cod_terminal': instance.codTerminal,
      'pfk_tipo_terminal': instance.tipoTerminal,
      'pfk_cod_estanque': instance.codEstanque,
      'pk_fecha_control': instance.fechaControl,
      'nivel_acido': instance.nivelAcido,
      'ton_acido': instance.tonAcido,
    };
