part of 'create_user_bloc.dart';

@immutable
abstract class CreateUserState {
  final String usuario;
  final String email;
  final String estado;

  const CreateUserState({this.usuario = '', this.email = '', this.estado = 'ACTIVO'});
}

class CreateUserInitial extends CreateUserState {}
class CreateUserLoading extends CreateUserState {}
class CreateUserSuccess extends CreateUserState {}
class CreateUserError extends CreateUserState {
  final String message;
  const CreateUserError(this.message);
}
