// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_acceso.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsuarioAcceso _$$_UsuarioAccesoFromJson(Map<String, dynamic> json) =>
    _$_UsuarioAcceso(
      id_usuario: json['id_usuario'] as int? ?? 0,
      id_acceso: json['id_acceso'] as String? ?? '',
      estado: json['estado'] as String? ?? 'ACTIVO',
      accesos: (json['accesos'] as List<dynamic>?)
              ?.map((e) => Acceso.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UsuarioAccesoToJson(_$_UsuarioAcceso instance) =>
    <String, dynamic>{
      'id_usuario': instance.id_usuario,
      'id_acceso': instance.id_acceso,
      'estado': instance.estado,
      'accesos': instance.accesos,
    };
