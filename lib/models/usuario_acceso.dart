import 'package:freezed_annotation/freezed_annotation.dart';

import 'acceso.dart';

part 'usuario_acceso.freezed.dart';
part 'usuario_acceso.g.dart';

@freezed
class UsuarioAcceso with _$UsuarioAcceso {
  factory UsuarioAcceso(
      {@JsonKey(name: 'id_usuario', defaultValue: 0)
          required int id_usuario,
      @JsonKey(name: 'id_acceso', defaultValue: '')
          required String id_acceso,
      @JsonKey(name: 'estado', defaultValue: 'ACTIVO')
          required String? estado,
      @Default([])
          List<Acceso> accesos}) = _UsuarioAcceso;

  factory UsuarioAcceso.fromJson(Map<String, dynamic> json) =>
      _$UsuarioAccesoFromJson(json);
}
