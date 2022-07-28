part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  final List<EstacionPoint> estaciones;
  final List<EstacionInactiva> estacionesInactivas;
  final List<TerminalPoint> terminales;
  final List<TrenPoint> trenes;
  final List<PrecaucionLine> precauciones;
  final List<ViaCedidaLine> viasCedidas;
  final List<ViaLibreLine> viasLibres;
  final List<DetectorDesrieloPoint> detectoresDesrielo;
  String typeView;
  final bool isLoaded;

  MapState({
      required this.estaciones,
      required this.estacionesInactivas,
      required this.terminales,
      required this.trenes,
      required this.precauciones,
      required this.viasCedidas,
      required this.viasLibres,
      required this.detectoresDesrielo,
      required this.typeView,
      required this.isLoaded});

  @override
  List<Object> get props => [];
}

class MapInitialState extends MapState {
  MapInitialState()
      : super(
            estaciones: [],
            estacionesInactivas: [],
            terminales: [],
            trenes: [],
            precauciones: [],
            viasCedidas: [],
            viasLibres: [],
            detectoresDesrielo: [],
            typeView: 'PLANA',
            isLoaded: true);
}

class MapLoadingState extends MapState {
  MapLoadingState()
      : super(
            estaciones: [],
            estacionesInactivas: [],
            terminales: [],
            trenes: [],
            precauciones: [],
            viasCedidas: [],
            viasLibres: [],
            detectoresDesrielo: [],
            typeView: 'PLANA',
            isLoaded: true);
}

class MapLoadedState extends MapState {
  MapLoadedState({
      required List<EstacionPoint> estaciones,
      required List<EstacionInactiva> estacionesInactivas,
      required List<TerminalPoint> terminales,
      required List<TrenPoint> trenes,
      required List<ViaCedidaLine> viasCedidas,
      required List<PrecaucionLine> precauciones,
      required List<ViaLibreLine> viasLibres,
      required List<DetectorDesrieloPoint> detectoresDesrielo,
      required String typeView })
      : super(
            estaciones: estaciones,
            estacionesInactivas: estacionesInactivas,
            terminales: terminales,
            trenes: trenes,
            precauciones: precauciones,
            viasCedidas: viasCedidas,
            viasLibres: viasLibres,
            detectoresDesrielo: detectoresDesrielo,
            typeView: typeView,
            isLoaded: true);
}

class MapErrorState extends MapState {
  final String message;

  MapErrorState({required this.message})
      : super(
            estaciones: [],
            estacionesInactivas: [],
            trenes: [],
            terminales: [],
            precauciones: [],
            viasCedidas: [],
            viasLibres: [],
            detectoresDesrielo: [],
            typeView: 'PLANA',
            isLoaded: true);
}
