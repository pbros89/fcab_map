part of 'chip_tren_bloc.dart';

@immutable
abstract class ChipTrenState {
  final List<TrenPoint> trenes;
  const ChipTrenState(this.trenes);
}

class ChipTrenInitial extends ChipTrenState {
  ChipTrenInitial() : super([]);
}


class ChipTrenLoading extends ChipTrenState {
  ChipTrenLoading() : super([]);
}

class ChipTrenLoaded extends ChipTrenState {
  const ChipTrenLoaded(List<TrenPoint> trenes) : super(trenes);
}