// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rol_usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RolUsuario _$$_RolUsuarioFromJson(Map<String, dynamic> json) =>
    _$_RolUsuario(
      idRol: json['id_rol'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      estado: json['estado'] as String? ?? 'A',
    );

Map<String, dynamic> _$$_RolUsuarioToJson(_$_RolUsuario instance) =>
    <String, dynamic>{
      'id_rol': instance.idRol,
      'nombre': instance.nombre,
      'estado': instance.estado,
    };
