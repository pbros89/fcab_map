part of 'chip_tren_bloc.dart';

@immutable
abstract class ChipTrenEvent {
  const ChipTrenEvent();
}

class ChipTrenSearchEvent extends ChipTrenEvent {
  final String search;
  final List<TrenPoint> trenes;

  const ChipTrenSearchEvent(this.search, this.trenes);
}