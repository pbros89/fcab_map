part of 'login_bloc.dart';

@immutable
abstract class LoginState {
  final String username;
  final String password;
  final bool remenber;

  const LoginState({this.username = '', this.password = '', this.remenber = false});
}

class LoginInitial extends LoginState {}
class LoginLoading extends LoginState {}
class LoginSuccess extends LoginState {
  final Usuario usuario;
  const LoginSuccess(this.usuario);
}
class LoginError extends LoginState {
  final String message;
  const LoginError(this.message);
}
