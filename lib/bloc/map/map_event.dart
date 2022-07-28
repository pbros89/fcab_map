part of 'map_bloc.dart';

@immutable
abstract class MapEvent extends Equatable {
  const MapEvent();

  @override
  List<Object?> get props => [];
}

class MapInitEvent extends MapEvent {
  const MapInitEvent();
}

class MapLoadEvent extends MapEvent {
  final bool showEstaciones;
  final bool showTerminales;
  final bool showViasLibres;
  final bool showPrecauciones;
  final bool showTrenes;
  final bool showViasCedidas;
  final bool showDetectoresDesrielo;
  final String codRamal;
  final String tipoPrecaucion;
  final int timingRefresh;
  final String typeView;

  const MapLoadEvent(
      {required this.showEstaciones,
      required this.showTerminales,
      required this.showPrecauciones,
      required this.showTrenes,
      required this.showViasCedidas,
      required this.showViasLibres, 
      required this.showDetectoresDesrielo, 
      required this.codRamal,
      required this.tipoPrecaucion,
      required this.timingRefresh,
      required this.typeView
      });
}


