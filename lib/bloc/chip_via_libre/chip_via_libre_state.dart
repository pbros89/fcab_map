part of 'chip_via_libre_bloc.dart';

@immutable
abstract class ChipViaLibreState {
  final List<ViaLibreLine> vias;
  const ChipViaLibreState(this.vias);
}

class ChipViaLibreInitial extends ChipViaLibreState {
  ChipViaLibreInitial() : super([]);
}


class ChipViaLibreLoading extends ChipViaLibreState {
  ChipViaLibreLoading() : super([]);
}

class ChipViaLibreLoaded extends ChipViaLibreState {
  const ChipViaLibreLoaded(List<ViaLibreLine> vias) : super(vias);
}
