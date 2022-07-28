part of 'detail_terminal_bloc.dart';

abstract class DetailTerminalState extends Equatable {
  final List<TerminalAcido> terminalAcidos;
  final List<ContadorLoco> contadorLoco;
  final List<ContadorCarro> contadorCarro;
  final List<DetalleLoco>? detalleLoco;
  final List<DetalleCarro>? detalleCarro;
  final ContadorLoco? contadorLocoSelect;
  final ContadorCarro? contadorCarroSelect;
  final int sections;

  const DetailTerminalState({
    required this.terminalAcidos,
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

class DetailTerminalInitial extends DetailTerminalState {
  DetailTerminalInitial()
      : super(
          terminalAcidos: [],
          contadorLoco: [],
          contadorCarro: [],
          detalleLoco: [],
          detalleCarro: [],
        );
}

class DetailTerminalLoading extends DetailTerminalState {
  DetailTerminalLoading() : super(contadorLoco: [], contadorCarro: [], terminalAcidos: [],);
}

class DetailTerminalLoaded extends DetailTerminalState {
  const DetailTerminalLoaded({
    required List<TerminalAcido> terminalAcidos,
    required List<ContadorLoco> contadorLoco,
    required List<ContadorCarro> contadorCarro,
    
    List<DetalleLoco>? detalleLoco,
    List<DetalleCarro>? detalleCarro,
    ContadorLoco? contadorLocoSelect,
    ContadorCarro? contadorCarroSelect,
    required int sections

  }) : super(
            terminalAcidos: terminalAcidos,
            contadorLoco: contadorLoco,
            contadorCarro: contadorCarro,
            detalleLoco: detalleLoco,
            detalleCarro: detalleCarro,
            contadorLocoSelect: contadorLocoSelect,
            contadorCarroSelect: contadorCarroSelect,
            sections: sections);
}

class DetailTerminalError extends DetailTerminalState {
  final String message;
  DetailTerminalError({required this.message})
      : super(
          terminalAcidos: [],
          contadorLoco: [],
          contadorCarro: [],
          detalleLoco: [],
          detalleCarro: [],
        );
}
