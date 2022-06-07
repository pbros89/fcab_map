part of 'accesos_user_bloc.dart';

@immutable
abstract class AccesosUserEvent {}

class AccesosUserInitEvent extends AccesosUserEvent {
  final Usuario usuario;

  AccesosUserInitEvent(this.usuario);
}

class AccesosUserSubmitEvent extends AccesosUserEvent {
  final UsuarioAcceso usuarioAcceso;

  AccesosUserSubmitEvent(this.usuarioAcceso);
}
