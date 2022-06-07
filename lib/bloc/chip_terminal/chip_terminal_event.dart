part of 'chip_terminal_bloc.dart';

@immutable
abstract class ChipTerminalEvent {
  const ChipTerminalEvent();
}

class ChipTerminalSearchEvent extends ChipTerminalEvent {
  final String search;
  final List<TerminalPoint> terminales;

  const ChipTerminalSearchEvent(this.search, this.terminales);
}