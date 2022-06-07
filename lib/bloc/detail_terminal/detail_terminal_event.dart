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
