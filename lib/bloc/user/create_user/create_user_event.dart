part of 'create_user_bloc.dart';

@immutable
abstract class CreateUserEvent {}

class CreateUserInitEvent extends CreateUserEvent {}

class CreateUserSubmitEvent extends CreateUserEvent {
  final int rut;
  final String password;
  final String cuenta;
  final String correo;
  final String nombre;
  final String estado;

  CreateUserSubmitEvent(this.cuenta, this.correo, this.estado, this.rut, this.nombre, this.password);
}