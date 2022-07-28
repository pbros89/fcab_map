part of 'filtro_usuario_bloc.dart';

@immutable
abstract class FiltroUsuarioEvent {}

class FiltroUsuarioInitEvent extends FiltroUsuarioEvent {
  final Usuario usuario;

  FiltroUsuarioInitEvent(this.usuario);
}

class FiltroUsuarioSubmitEvent extends FiltroUsuarioEvent {
  final FiltroUsuario filtroUsuario;

  FiltroUsuarioSubmitEvent(this.filtroUsuario);
}
