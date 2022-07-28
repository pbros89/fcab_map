part of 'detail_terminal_bloc.dart';


abstract class DetailTerminalEvent extends Equatable {
  const DetailTerminalEvent();

  @override
  List<Object?> get props => [];
}

class DetailTerminalInitEvent extends DetailTerminalEvent {}

class DetailTerminalLoadEvent extends DetailTerminalEvent {
  final TerminalPoint terminalPoint;
  const DetailTerminalLoadEvent({required this.terminalPoint});
}

class DetailTerminalSelectLocoEvent extends DetailTerminalEvent {
  final List<TerminalAcido> terminalAcidos;
  final List<ContadorLoco> contadorLoco;
  final List<ContadorCarro> contadorCarro;
  final ContadorLoco contadorLocoSelect;
  final int sections;
  const DetailTerminalSelectLocoEvent( 
      {required this.terminalAcidos,
      required this.contadorLoco,
      required this.contadorCarro,
      required this.contadorLocoSelect,
      required this.sections});
}

class DetailTerminalSelectCarroEvent extends DetailTerminalEvent {
  final List<TerminalAcido> terminalAcidos;
  final List<ContadorLoco> contadorLoco;
  final List<ContadorCarro> contadorCarro;
  final ContadorCarro contadorCarroSelect;
  final int sections;
  const DetailTerminalSelectCarroEvent({
    required this.terminalAcidos,
    required this.contadorCarro,
    required this.contadorLoco,
    required this.contadorCarroSelect,
    required this.sections
  });
}
