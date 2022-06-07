part of 'chip_terminal_bloc.dart';

@immutable
abstract class ChipTerminalState {
  final List<TerminalPoint> terminales;
  const ChipTerminalState(this.terminales);
}

class ChipTerminalInitial extends ChipTerminalState {
  ChipTerminalInitial() : super([]);
}


class ChipTerminalLoading extends ChipTerminalState {
  ChipTerminalLoading() : super([]);
}

class ChipTerminalLoaded extends ChipTerminalState {
  const ChipTerminalLoaded(List<TerminalPoint> terminales) : super(terminales);
}