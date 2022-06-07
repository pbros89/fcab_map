part of 'accesos_user_bloc.dart';

@immutable
abstract class AccesosUserState {
  final List<UsuarioAcceso> accesos;

  const AccesosUserState({ this.accesos = const <UsuarioAcceso>[]});
}

class AccesosUserInitial extends AccesosUserState {
  final Usuario usuario;

  const AccesosUserInitial(this.usuario);
}
class AccesosUserLoading extends AccesosUserState {}

class AccesosUserSuccess extends AccesosUserState {
  const AccesosUserSuccess(List<UsuarioAcceso> accesos) :super(accesos: accesos);
}

class AccesosUserError extends AccesosUserState {
  final String message;
  const AccesosUserError(this.message);
}
