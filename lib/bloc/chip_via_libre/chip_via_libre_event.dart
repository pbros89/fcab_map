part of 'chip_via_libre_bloc.dart';

@immutable
abstract class ChipViaLibreEvent {}


class ChipViaLibreSearchEvent extends ChipViaLibreEvent {
  final String search;
  final List<ViaLibreLine> vias;

  ChipViaLibreSearchEvent(this.search, this.vias);
}