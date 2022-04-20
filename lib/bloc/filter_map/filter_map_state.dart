part of 'filter_map_bloc.dart';

abstract class FilterMapState extends Equatable {
  final bool showEstaciones;
  final bool showRamales;
  final bool showPrecauciones;
  final bool showTrenes;
  final bool isLoaded;

  const FilterMapState({
    required this.showEstaciones,
    required this.showRamales,
    required this.showPrecauciones,
    required this.showTrenes,
    required this.isLoaded,
  });
  @override
  List<Object> get props => [];
}

class FilterMapInitial extends FilterMapState {
  const FilterMapInitial()
      : super(
            showEstaciones: false,
            showRamales: false,
            showPrecauciones: false,
            showTrenes: false,
            isLoaded: true);
}

class FilterMapLoading extends FilterMapState {
  const FilterMapLoading()
      : super(
            showEstaciones: false,
            showRamales: false,
            showPrecauciones: false,
            showTrenes: false,
            isLoaded: false);
}

class FilterMapLoaded extends FilterMapState {
  const FilterMapLoaded(
      {required bool showEstaciones,
      required bool showRamales,
      required bool showPrecauciones,
      required bool showTrenes})
      : super(
            showEstaciones: showEstaciones,
            showRamales: showRamales,
            showPrecauciones: showPrecauciones,
            showTrenes: showTrenes,
            isLoaded: true);
}

class FilterMapError extends FilterMapState {
  final String message;
  const FilterMapError({required this.message})
      : super(
            showEstaciones: false,
            showRamales: false,
            showPrecauciones: false,
            showTrenes: false,
            isLoaded: false);
}
