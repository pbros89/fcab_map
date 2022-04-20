part of 'filter_map_bloc.dart';

abstract class FilterMapEvent extends Equatable {
  const FilterMapEvent();

  @override
  List<Object> get props => [];
}

class FilterMapInitEvent extends FilterMapEvent {}

class FilterMapChangeEvent extends FilterMapEvent {
  final bool showEstaciones;
  final bool showRamales;
  final bool showPrecauciones;
  final bool showTrenes;
  const FilterMapChangeEvent(
      {required this.showEstaciones,
      required this.showRamales,
      required this.showPrecauciones,
      required this.showTrenes});
}
