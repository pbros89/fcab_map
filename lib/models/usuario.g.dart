// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Usuario _$$_UsuarioFromJson(Map<String, dynamic> json) => _$_Usuario(
      rut: json['rut'] as int? ?? 0,
      password: json['password'] as String? ?? '',
      correo: json['correo'] as String? ?? '',
      cuenta: json['cuenta'] as String? ?? '',
      nombre: json['nombre'] as String? ?? '',
      estado: json['estado'] as String? ?? 'I',
      filtros: (json['filtros'] as List<dynamic>?)
              ?.map((e) => FiltroUsuario.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      roles: (json['roles'] as List<dynamic>?)
              ?.map((e) => RolUsuario.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UsuarioToJson(_$_Usuario instance) =>
    <String, dynamic>{
      'rut': instance.rut,
      'password': instance.password,
      'correo': instance.correo,
      'cuenta': instance.cuenta,
      'nombre': instance.nombre,
      'estado': instance.estado,
      'filtros': instance.filtros,
      'roles': instance.roles,
    };
