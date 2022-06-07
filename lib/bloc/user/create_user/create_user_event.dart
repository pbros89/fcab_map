part of 'create_user_bloc.dart';

@immutable
abstract class CreateUserEvent {}

class CreateUserInitEvent extends CreateUserEvent {}

class CreateUserSubmitEvent extends CreateUserEvent {
  final String usuario;
  final String email;
  final String estado;

  CreateUserSubmitEvent(this.usuario, this.email, this.estado);
}