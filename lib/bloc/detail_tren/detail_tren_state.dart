part of 'detail_tren_bloc.dart';

abstract class DetailTrenState extends Equatable {
  final List<TrenMr> materialRodantes;
  final List<TrenTripulacion> tripulaciones;
  final int cantCarros;
  final int cantLocos;
  final int cantCV;
  final int cantCC;
  final double largoTren;
  final double arrastre;
  final String servicio;
  final List<Map<String, dynamic>> tipoCarrosContador;
  final int sections;

  const DetailTrenState({
    required this.materialRodantes,
    required this.tripulaciones,
    required this.tipoCarrosContador,
    this.cantCarros = 0,
    this.cantLocos = 0,
    this.cantCV = 0,
    this.cantCC = 0,
    this.largoTren = 0,
    this.arrastre = 0,
    this.servicio = 'Sin Servicio',
    this.sections = 1,

  });

  @override
  List<Object> get props => [];
}

class DetailTrenInitial extends DetailTrenState {
  DetailTrenInitial()
      : super(
          materialRodantes: [],
          tripulaciones: [],
          tipoCarrosContador: []
        );
}

class DetailTrenLoading extends DetailTrenState {
  DetailTrenLoading() : super(materialRodantes: [], tripulaciones: [], tipoCarrosContador: []);
}

class DetailTrenLoaded extends DetailTrenState {
  const DetailTrenLoaded({
    required List<TrenMr> materialRodantes,
    required List<TrenTripulacion> tripulaciones,
    required int cantCarros,
    required int cantLocos,
    required int cantCV,
    required int cantCC,
    required double largoTren,
    required double arrastre,
    required String servicio,
    required List<Map<String, dynamic>> tipoCarrosContador,
    required int sections

  }) : super(
            materialRodantes: materialRodantes,
            tripulaciones: tripulaciones,
            cantCarros: cantCarros,
            cantLocos: cantLocos,
            cantCV: cantCV,
            cantCC: cantCC,
            largoTren: largoTren,
            arrastre: arrastre,
            servicio: servicio,
            tipoCarrosContador: tipoCarrosContador,
            sections: sections);
}

class DetailTrenError extends DetailTrenState {
  final String message;
  DetailTrenError({required this.message})
      : super(
          materialRodantes: [],
          tripulaciones: [],
          tipoCarrosContador: []
        );
}
