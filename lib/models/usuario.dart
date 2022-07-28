import 'package:fcab_map/models/filtro_usuario.dart';
import 'package:fcab_map/models/rol_usuario.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
class Usuario with _$Usuario {
  factory Usuario(
      {@JsonKey(name: 'rut', defaultValue: 0)
          required int rut,
      @JsonKey(name: 'password', defaultValue: '')
          required String password,
      @JsonKey(name: 'correo', defaultValue: '')
          required String correo,
      @JsonKey(name: 'cuenta', defaultValue: '')
          required String cuenta,
      @JsonKey(name: 'nombre', defaultValue: '')
          required String nombre,
      @JsonKey(name: 'estado', defaultValue: 'I')
          required String estado,
      @Default([])
          List<FiltroUsuario> filtros,
      @Default([])
          List<RolUsuario> roles}) = _Usuario;

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);
}
