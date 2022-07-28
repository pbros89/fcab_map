import 'package:freezed_annotation/freezed_annotation.dart';

part 'filtro_usuario.freezed.dart';
part 'filtro_usuario.g.dart';

@freezed
class FiltroUsuario with _$FiltroUsuario {
  factory FiltroUsuario(
      {@JsonKey(name: 'id_filtro', defaultValue: 0)
          required int idFiltro,
      @JsonKey(name: 'nombre', defaultValue: '')
          required String nombre,
      @JsonKey(name: 'estado', defaultValue: 'A')
          required String? estado,
      }) = _FiltroUsuario;

  factory FiltroUsuario.fromJson(Map<String, dynamic> json) =>
      _$FiltroUsuarioFromJson(json);
}
