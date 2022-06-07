part of 'detail_estacion_bloc.dart';

abstract class DetailEstacionEvent extends Equatable {
  const DetailEstacionEvent();

  @override
  List<Object?> get props => [];
}

class DetailEstacionInitEvent extends DetailEstacionEvent {}

class DetailEstacionLoadEvent extends DetailEstacionEvent {
  final EstacionPoint estacionPoint;
  const DetailEstacionLoadEvent({required this.estacionPoint});
}

class DetailEstacionSelectLocoEvent extends DetailEstacionEvent {
  final List<ContadorLoco> contadorLoco;
  final List<ContadorCarro> contadorCarro;
  final ContadorLoco contadorLocoSelect;
  final int sections;
  const DetailEstacionSelectLocoEvent( 
      {required this.contadorLoco,
      required this.contadorCarro,
      required this.contadorLocoSelect,
      required this.sections});
}

class DetailEstacionSelectCarroEvent extends DetailEstacionEvent {
  final List<ContadorLoco> contadorLoco;
  final List<ContadorCarro> contadorCarro;
  final ContadorCarro contadorCarroSelect;
  final int sections;
  const DetailEstacionSelectCarroEvent({
    required this.contadorCarro,
    required this.contadorLoco,
    required this.contadorCarroSelect,
    required this.sections
  });
}
