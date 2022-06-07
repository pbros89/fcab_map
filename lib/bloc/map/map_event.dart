part of 'map_bloc.dart';

@immutable
abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object?> get props => [];
}

class MapLoadEvent extends MapEvent {
  final bool showEstaciones;
  final bool showTerminales;
  final bool showViasLibres;
  final bool showPrecauciones;
  final bool showTrenes;
  final bool showViasCedidas;
  final bool showDetectoresDesrielo;
  final String ramal;

  const MapLoadEvent(
      {required this.showEstaciones,
      required this.showTerminales,
      required this.showPrecauciones,
      required this.showTrenes,
      required this.showViasCedidas,
      required this.showViasLibres, 
      required this.showDetectoresDesrielo, 
      this.ramal = '', });
}


