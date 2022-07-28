import 'package:freezed_annotation/freezed_annotation.dart';

part 'rol_usuario.freezed.dart';
part 'rol_usuario.g.dart';

@freezed
class RolUsuario with _$RolUsuario {
  factory RolUsuario(
      {@JsonKey(name: 'id_rol', defaultValue: '')
          required String idRol,
      @JsonKey(name: 'nombre', defaultValue: '')
          required String nombre,
      @JsonKey(name: 'estado', defaultValue: 'A')
          required String? estado,
      }) = _RolUsuario;

  factory RolUsuario.fromJson(Map<String, dynamic> json) =>
      _$RolUsuarioFromJson(json);
}
