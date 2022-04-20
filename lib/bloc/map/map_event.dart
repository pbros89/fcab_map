part of 'map_bloc.dart';

@immutable
abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object?> get props => [];
}

class MapLoadDataEvent extends MapEvent {
  final bool showEstaciones;
  final bool showRamales;
  final bool showPrecauciones;
  final bool showTrenes;

  const MapLoadDataEvent(
      {required this.showEstaciones,
      required this.showRamales,
      required this.showPrecauciones,
      required this.showTrenes});
}
