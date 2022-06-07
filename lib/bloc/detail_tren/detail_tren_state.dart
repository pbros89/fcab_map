part of 'detail_tren_bloc.dart';

abstract class DetailTrenState extends Equatable {
  final List<TrenMr> materialRodantes;
  final List<TrenTripulacion> tripulaciones;
  final int sections;

  const DetailTrenState({
    required this.materialRodantes,
    required this.tripulaciones,
    this.sections = 1
  });

  @override
  List<Object> get props => [];
}

class DetailTrenInitial extends DetailTrenState {
  DetailTrenInitial()
      : super(
          materialRodantes: [],
          tripulaciones: [],
        );
}

class DetailTrenLoading extends DetailTrenState {
  DetailTrenLoading() : super(materialRodantes: [], tripulaciones: []);
}

class DetailTrenLoaded extends DetailTrenState {
  const DetailTrenLoaded({
    required List<TrenMr> materialRodantes,
    required List<TrenTripulacion> tripulaciones,
    required int sections

  }) : super(
            materialRodantes: materialRodantes,
            tripulaciones: tripulaciones,
            sections: sections);
}

class DetailTrenError extends DetailTrenState {
  final String message;
  DetailTrenError({required this.message})
      : super(
          materialRodantes: [],
          tripulaciones: [],
        );
}
