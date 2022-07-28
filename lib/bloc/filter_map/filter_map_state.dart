part of 'filter_map_bloc.dart';

abstract class FilterMapState extends Equatable {
  final bool showEstaciones;
  final bool showPrecauciones;
  final bool showTrenes;
  final bool showTerminales;
  final bool showViasCedidas;
  final bool showViasLibres;
  final bool showDetectoresDesrielo;
  final String codRamal;
  final String tipoPrecaucion;
  final int timingRefresh;
  final String typeView;
  final bool isLoaded;

  const FilterMapState( {
    required this.showEstaciones,
    required this.showPrecauciones,
    required this.showTrenes,
    required this.showTerminales,
    required this.showViasCedidas,
    required this.showViasLibres,
    required this.showDetectoresDesrielo, 
    required this.codRamal,
    required this.tipoPrecaucion,
    required this.timingRefresh,
    required this.typeView,
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
            codRamal: 'TODOS',
            tipoPrecaucion: 'ADMINISTRATIVA',
            typeView: 'PLANA',
            timingRefresh: 5,
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
            codRamal: 'TODOS',
            tipoPrecaucion: 'ADMINISTRATIVA',
            typeView: 'PLANA',
            timingRefresh: 5,
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
      required bool showDetectoresDesrielo,
      required String codRamal,
      required String tipoPrecaucion,
      required int timingRefresh,
      required String typeView})
      : super(
            showEstaciones: showEstaciones,
            showPrecauciones: showPrecauciones,
            showTrenes: showTrenes,
            showTerminales: showTerminales,
            showViasCedidas:  showViasCedidas,
            showViasLibres:  showViasLibres,
            showDetectoresDesrielo:  showDetectoresDesrielo,
            codRamal: codRamal,
            tipoPrecaucion: tipoPrecaucion,
            typeView: typeView,
            timingRefresh: timingRefresh,
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
            codRamal: 'TODOS',
            tipoPrecaucion: 'ADMINISTRATIVA',
            typeView: 'PLANA',
            timingRefresh: 5,
            isLoaded: false);
}
