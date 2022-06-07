part of 'detail_estacion_bloc.dart';

abstract class DetailEstacionState extends Equatable {
  final List<ContadorLoco> contadorLoco;
  final List<ContadorCarro> contadorCarro;
  final List<DetalleLoco>? detalleLoco;
  final List<DetalleCarro>? detalleCarro;
  final ContadorLoco? contadorLocoSelect;
  final ContadorCarro? contadorCarroSelect;
  final int sections;

  const DetailEstacionState({
    required this.contadorLoco,
    required this.contadorCarro,
    this.detalleLoco,
    this.detalleCarro,
    this.contadorLocoSelect,
    this.contadorCarroSelect,
    this.sections = 1
  });

  @override
  List<Object> get props => [];
}

class DetailEstacionInitial extends DetailEstacionState {
  DetailEstacionInitial()
      : super(
          contadorLoco: [],
          contadorCarro: [],
          detalleLoco: [],
          detalleCarro: [],
        );
}

class DetailEstacionLoading extends DetailEstacionState {
  DetailEstacionLoading() : super(contadorLoco: [], contadorCarro: []);
}

class DetailEstacionLoaded extends DetailEstacionState {
  const DetailEstacionLoaded({
    required List<ContadorLoco> contadorLoco,
    required List<ContadorCarro> contadorCarro,
    
    List<DetalleLoco>? detalleLoco,
    List<DetalleCarro>? detalleCarro,
    ContadorLoco? contadorLocoSelect,
    ContadorCarro? contadorCarroSelect,
    required int sections

  }) : super(
            contadorLoco: contadorLoco,
            contadorCarro: contadorCarro,
            detalleLoco: detalleLoco,
            detalleCarro: detalleCarro,
            contadorLocoSelect: contadorLocoSelect,
            contadorCarroSelect: contadorCarroSelect,
            sections: sections);
}

class DetailEstacionError extends DetailEstacionState {
  final String message;
  DetailEstacionError({required this.message})
      : super(
          contadorLoco: [],
          contadorCarro: [],
          detalleLoco: [],
          detalleCarro: [],
        );
}
