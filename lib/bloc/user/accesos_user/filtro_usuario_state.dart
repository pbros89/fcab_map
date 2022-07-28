part of 'filtro_usuario_bloc.dart';

@immutable
abstract class FiltroUsuarioState {
  final List<FiltroUsuario> accesos;

  const FiltroUsuarioState({ this.accesos = const <FiltroUsuario>[]});
}

class FiltroUsuarioInitial extends FiltroUsuarioState {
  final Usuario usuario;

  const FiltroUsuarioInitial(this.usuario);
}
class FiltroUsuarioLoading extends FiltroUsuarioState {}

class FiltroUsuarioSuccess extends FiltroUsuarioState {
  const FiltroUsuarioSuccess(List<FiltroUsuario> accesos) :super(accesos: accesos);
}

class FiltroUsuarioError extends FiltroUsuarioState {
  final String message;
  const FiltroUsuarioError(this.message);
}
