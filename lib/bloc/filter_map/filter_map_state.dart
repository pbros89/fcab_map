part of 'filter_map_bloc.dart';

abstract class FilterMapState extends Equatable {
  final bool showEstaciones;
  final bool showPrecauciones;
  final bool showTrenes;
  final bool showTerminales;
  final bool showViasCedidas;
  final bool showViasLibres;
  final bool showDetectoresDesrielo;
  final bool isLoaded;

  const FilterMapState({
    required this.showEstaciones,
    required this.showPrecauciones,
    required this.showTrenes,
    required this.showTerminales,
    required this.showViasCedidas,
    required this.showViasLibres,
    required this.showDetectoresDesrielo, 
    required this.isLoaded,
  });
  @override
  List<Object> get props => [];
}

class FilterMapInitial extends FilterMapState {
  const FilterMapInitial()
      : super(
            showEstaciones: false,
            showPrecauciones: false,
            showTrenes: false,
            showTerminales: false,
            showViasCedidas:  false,
            showViasLibres:  false,
            showDetectoresDesrielo:  false,
            isLoaded: true);
}

class FilterMapLoading extends FilterMapState {
  const FilterMapLoading()
      : super(
            showEstaciones: false,
            showPrecauciones: false,
            showTrenes: false,
            showTerminales: false,
            showViasCedidas:  false,
            showViasLibres:  false,
            showDetectoresDesrielo:  false,
            isLoaded: false);
}

class FilterMapLoaded extends FilterMapState {
  const FilterMapLoaded(
      {required bool showEstaciones,
      required bool showPrecauciones,
      required bool showTerminales,
      required bool showTrenes,
      required bool showViasCedidas,
      required bool showViasLibres,
      required bool showDetectoresDesrielo,})
      : super(
            showEstaciones: showEstaciones,
            showPrecauciones: showPrecauciones,
            showTrenes: showTrenes,
            showTerminales: showTerminales,
            showViasCedidas:  showViasCedidas,
            showViasLibres:  showViasLibres,
            showDetectoresDesrielo:  showDetectoresDesrielo,
            isLoaded: true);
}

class FilterMapError extends FilterMapState {
  final String message;
  const FilterMapError({required this.message})
      : super(
             showEstaciones: false,
            showPrecauciones: false,
            showTrenes: false,
            showTerminales: false,
            showViasCedidas:  false,
            showViasLibres:  false,
            showDetectoresDesrielo:  false,
            isLoaded: false);
}
