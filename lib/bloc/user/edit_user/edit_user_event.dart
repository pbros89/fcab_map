part of 'edit_user_bloc.dart';

@immutable
abstract class EditUserEvent {}

class EditUserInitEvent extends EditUserEvent {
  final Usuario usuario;

  EditUserInitEvent(this.usuario);
}

class EditUserSubmitEvent extends EditUserEvent {
  final Usuario usuario;

  EditUserSubmitEvent(this.usuario);
}