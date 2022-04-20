part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  final List<String> ramales;
  final Map<String, List<RamalPoint>> ramalesData;
  final List<EstacionPoint> estacionesData;
  final List<TrenPoint> trenesData;
  final List<PrecaucionPoint> precaucionesData;
  final bool isLoaded;

  const MapState(
      {required this.ramales,
      required this.ramalesData,
      required this.estacionesData,
      required this.trenesData,
      required this.precaucionesData,
      required this.isLoaded});

  @override
  List<Object> get props => [];
}

class MapInitialState extends MapState {
  MapInitialState()
      : super(
            ramales: [],
            ramalesData: {},
            estacionesData: [],
            trenesData: [],
            precaucionesData: [],
            isLoaded: true);
}

class MapLoadingState extends MapState {
  MapLoadingState()
      : super(
            ramales: [],
            ramalesData: {},
            estacionesData: [],
            trenesData: [],
            precaucionesData: [],
            isLoaded: true);
}

class MapLoadedState extends MapState {
  const MapLoadedState(
      {required List<String> ramales,
      required Map<String, List<RamalPoint>> ramalesData,
      required List<EstacionPoint> estacionesData,
      required List<TrenPoint> trenesData,
      required List<PrecaucionPoint> precaucionesData})
      : super(
            ramales: ramales,
            ramalesData: ramalesData,
            estacionesData: estacionesData,
            trenesData: trenesData,
            precaucionesData: precaucionesData,
            isLoaded: true);
}

class MapErrorState extends MapState {
  final String message;

  MapErrorState({required this.message})
      : super(
            ramales: [],
            ramalesData: {},
            estacionesData: [],
            trenesData: [],
            precaucionesData: [],
            isLoaded: true);
}
