// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtro_usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FiltroUsuario _$$_FiltroUsuarioFromJson(Map<String, dynamic> json) =>
    _$_FiltroUsuario(
      idFiltro: json['id_filtro'] as int? ?? 0,
      nombre: json['nombre'] as String? ?? '',
      estado: json['estado'] as String? ?? 'A',
    );

Map<String, dynamic> _$$_FiltroUsuarioToJson(_$_FiltroUsuario instance) =>
    <String, dynamic>{
      'id_filtro': instance.idFiltro,
      'nombre': instance.nombre,
      'estado': instance.estado,
    };
