part of 'edit_user_bloc.dart';

@immutable
abstract class EditUserState {
}

class EditUserInitial extends EditUserState {
  final Usuario usuario;

  EditUserInitial(this.usuario);
}
class EditUserLoading extends EditUserState {}
class EditUserSuccess extends EditUserState {}
class EditUserError extends EditUserState {
  final String message;
  EditUserError(this.message);
}
