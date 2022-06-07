part of 'chip_via_cedida_bloc.dart';

@immutable
abstract class ChipViaCedidaEvent {}


class ChipViaCedidaSearchEvent extends ChipViaCedidaEvent {
  final String search;
  final List<ViaCedidaLine> vias;

  ChipViaCedidaSearchEvent(this.search, this.vias);
}