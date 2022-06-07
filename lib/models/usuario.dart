import 'package:fcab_map/models/usuario_acceso.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usuario.freezed.dart';
part 'usuario.g.dart';

@freezed
class Usuario with _$Usuario {
  factory Usuario(
      {@JsonKey(name: 'id', defaultValue: 0)
          required int id,
      @JsonKey(name: 'email', defaultValue: '')
          required String email,
      @JsonKey(name: 'usuario', defaultValue: '')
          required String usuario,
      @JsonKey(name: 'ultimo_login')
        DateTime? ultimoLogin,
      @JsonKey(name: 'estado', defaultValue: 'INACTIVO')
          required String estado,
      
      @Default([])
          List<UsuarioAcceso> accesos}) = _Usuario;

  factory Usuario.fromJson(Map<String, dynamic> json) =>
      _$UsuarioFromJson(json);
}
