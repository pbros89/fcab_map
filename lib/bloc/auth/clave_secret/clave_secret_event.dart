part of 'clave_secret_bloc.dart';

@immutable
abstract class ClaveSecretEvent {}

class ClaveSecretInitEvent extends ClaveSecretEvent {}

class ClaveSecretSubmitEvent extends ClaveSecretEvent {
  final String cuenta;
  final int rut;
  final String clave;

  ClaveSecretSubmitEvent(this.cuenta, this.rut, this.clave);
}