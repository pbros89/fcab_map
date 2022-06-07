part of 'chip_estacion_bloc.dart';

@immutable
abstract class ChipEstacionState {
  final List<EstacionPoint> estaciones;
  const ChipEstacionState(this.estaciones);
}

class ChipEstacionInitial extends ChipEstacionState {
  ChipEstacionInitial() : super([]);
}


class ChipEstacionLoading extends ChipEstacionState {
  ChipEstacionLoading() : super([]);
}

class ChipEstacionLoaded extends ChipEstacionState {
  const ChipEstacionLoaded(List<EstacionPoint> estaciones) : super(estaciones);
}