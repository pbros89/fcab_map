part of 'clave_secret_bloc.dart';

@immutable
abstract class ClaveSecretState {
  final String usuario;
  final int rut;
  final String clave;

  const ClaveSecretState({this.usuario = '', this.rut = 0, this.clave = ''});
}

class ClaveSecretInitial extends ClaveSecretState {}
class ClaveSecretLoading extends ClaveSecretState {}
class ClaveSecretSuccess extends ClaveSecretState {
  final Usuario usuarioValido;
  const ClaveSecretSuccess(this.usuarioValido);
}
class ClaveSecretError extends ClaveSecretState {
  final String message;
  const ClaveSecretError(this.message);
}
