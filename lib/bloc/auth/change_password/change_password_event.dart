part of 'change_password_bloc.dart';

@immutable
abstract class ChangePasswordEvent {}

class ChangePasswordInitEvent extends ChangePasswordEvent {}

class ChangePasswordSubmitEvent extends ChangePasswordEvent {
  final String username;

  ChangePasswordSubmitEvent(this.username,);
}