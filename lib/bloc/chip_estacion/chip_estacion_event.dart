part of 'chip_estacion_bloc.dart';

@immutable
abstract class ChipEstacionEvent {
  const ChipEstacionEvent();
}

class ChipEstacionSearchEvent extends ChipEstacionEvent {
  final String search;
  final List<EstacionPoint> estaciones;

  const ChipEstacionSearchEvent(this.search, this.estaciones);
}