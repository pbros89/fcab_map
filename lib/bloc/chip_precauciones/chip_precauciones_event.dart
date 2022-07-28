part of 'chip_precauciones_bloc.dart';

@immutable
abstract class ChipPrecaucionesEvent {}


class ChipPrecaucionesSearchEvent extends ChipPrecaucionesEvent {
  final String search;
  final List<PrecaucionLine> precaucion;

  ChipPrecaucionesSearchEvent(this.search, this.precaucion);
}