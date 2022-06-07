// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Usuario _$$_UsuarioFromJson(Map<String, dynamic> json) => _$_Usuario(
      id: json['id'] as int? ?? 0,
      email: json['email'] as String? ?? '',
      usuario: json['usuario'] as String? ?? '',
      ultimoLogin: json['ultimo_login'] == null
          ? null
          : DateTime.parse(json['ultimo_login'] as String),
      estado: json['estado'] as String? ?? 'INACTIVO',
      accesos: (json['accesos'] as List<dynamic>?)
              ?.map((e) => UsuarioAcceso.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UsuarioToJson(_$_Usuario instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'usuario': instance.usuario,
      'ultimo_login': instance.ultimoLogin?.toIso8601String(),
      'estado': instance.estado,
      'accesos': instance.accesos,
    };
