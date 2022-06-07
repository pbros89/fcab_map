part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginInitEvent extends LoginEvent {}

class LoginSubmitEvent extends LoginEvent {
  final String username;
  final String password;
  final bool remenber;

  LoginSubmitEvent(this.username, this.password, this.remenber);
}