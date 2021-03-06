part of 'filter_map_bloc.dart';

abstract class FilterMapEvent extends Equatable {
  const FilterMapEvent();

  @override
  List<Object> get props => [];
  
}

class FilterMapInitEvent extends FilterMapEvent {}

class FilterMapChangeEvent extends FilterMapEvent {
  final bool showEstaciones;
  final bool showPrecauciones;
  final bool showTerminales;
  final bool showTrenes;
  final bool showViasCedidas;
  final bool showViasLibres;
  final bool showDetectoresDesrielo;
  final String codRamal;
  final String tipoPrecaucion;
  final int timingRefresh;
  final String typeView;
  const FilterMapChangeEvent(
      {required this.showEstaciones,
      required this.showPrecauciones,
      required this.showTerminales,
      required this.showTrenes,
      required this.showViasCedidas,
      required this.showViasLibres,
      required this.showDetectoresDesrielo,
      required this.codRamal,
      required this.tipoPrecaucion,
      required this.timingRefresh,
      required this.typeView});
}
