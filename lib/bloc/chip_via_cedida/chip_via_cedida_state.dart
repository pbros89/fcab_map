part of 'chip_via_cedida_bloc.dart';

@immutable
abstract class ChipViaCedidaState {
  final List<ViaCedidaLine> vias;
  const ChipViaCedidaState(this.vias);
}

class ChipViaCedidaInitial extends ChipViaCedidaState {
  ChipViaCedidaInitial() : super([]);
}


class ChipViaCedidaLoading extends ChipViaCedidaState {
  ChipViaCedidaLoading() : super([]);
}

class ChipViaCedidaLoaded extends ChipViaCedidaState {
  const ChipViaCedidaLoaded(List<ViaCedidaLine> vias) : super(vias);
}
