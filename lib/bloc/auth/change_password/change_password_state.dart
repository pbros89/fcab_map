part of 'change_password_bloc.dart';

@immutable
abstract class ChangePasswordState {
  final String username;

  const ChangePasswordState({this.username = ''});
}

class ChangePasswordInitial extends ChangePasswordState {}
class ChangePasswordLoading extends ChangePasswordState {}
class ChangePasswordSuccess extends ChangePasswordState {
  final Usuario usuario;
  const ChangePasswordSuccess(this.usuario);}

class ChangePasswordError extends ChangePasswordState {
  final String message;
  const ChangePasswordError(this.message);
}
