part of 'detail_terminal_bloc.dart';

abstract class DetailTerminalState extends Equatable {
  final List<TerminalAcido> terminalAcidos;
  final int sections;

  const DetailTerminalState({
    required this.terminalAcidos,
    this.sections = 1
  });

  @override
  List<Object> get props => [];
}

class DetailTerminalInitial extends DetailTerminalState {
  DetailTerminalInitial()
      : super(
          terminalAcidos: [],
        );
}

class DetailTerminalLoading extends DetailTerminalState {
  DetailTerminalLoading() : super(terminalAcidos: [],);
}

class DetailTerminalLoaded extends DetailTerminalState {
  const DetailTerminalLoaded({
    required List<TerminalAcido> terminalAcidos,
    required int sections

  }) : super(
            terminalAcidos: terminalAcidos,
            sections: sections);
}

class DetailTerminalError extends DetailTerminalState {
  final String message;
  DetailTerminalError({required this.message})
      : super(
          terminalAcidos: [],
        );
}
