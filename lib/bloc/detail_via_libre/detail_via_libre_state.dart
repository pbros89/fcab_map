part of 'detail_via_libre_bloc.dart';

@immutable
abstract class DetailViaLibreState {
  final DetalleViaLibre? detalleViaLibre;
  const DetailViaLibreState(this.detalleViaLibre);
}

class DetailViaLibreInitial extends DetailViaLibreState {
  const DetailViaLibreInitial() : super(null);
}

class DetailViaLibreLoading extends DetailViaLibreState {
  const DetailViaLibreLoading() : super(null);
}

class DetailViaLibreLoaded extends DetailViaLibreState {
  const DetailViaLibreLoaded(DetalleViaLibre detalleViaLibre) : super(detalleViaLibre);
}

class DetailViaLibreError extends DetailViaLibreState {
  final String message;
  const DetailViaLibreError({required this.message})
      : super(
          null
        );
}