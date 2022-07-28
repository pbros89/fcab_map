part of 'create_user_bloc.dart';

@immutable
abstract class CreateUserState {
  final int rut;
  final String nombre;
  final String cuenta;
  final String correo;
  final String password;
  final String estado;

  const CreateUserState({this.rut = 0, this.nombre = '', this.cuenta = '', this.correo = '', this.password = '', this.estado = 'A'});
}

class CreateUserInitial extends CreateUserState {}
class CreateUserLoading extends CreateUserState {}
class CreateUserSuccess extends CreateUserState {}
class CreateUserError extends CreateUserState {
  final String message;
  const CreateUserError(this.message);
}
