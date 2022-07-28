part of 'chip_precauciones_bloc.dart';

@immutable
abstract class ChipPrecaucionesState {
  final List<PrecaucionLine> vias;
  const ChipPrecaucionesState(this.vias);
}

class ChipPrecaucionesInitial extends ChipPrecaucionesState {
  ChipPrecaucionesInitial() : super([]);
}


class ChipPrecaucionesLoading extends ChipPrecaucionesState {
  ChipPrecaucionesLoading() : super([]);
}

class ChipPrecaucionesLoaded extends ChipPrecaucionesState {
  const ChipPrecaucionesLoaded(List<PrecaucionLine> vias) : super(vias);
}
