import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/terminal_point.dart';

part 'chip_terminal_event.dart';
part 'chip_terminal_state.dart';

class ChipTerminalBloc extends Bloc<ChipTerminalEvent, ChipTerminalState> {
  ChipTerminalBloc() : super(ChipTerminalInitial()) {
    on<ChipTerminalSearchEvent>((event, emit) async {
      emit.call(ChipTerminalLoading());
      List<TerminalPoint> list = event.terminales;

      await Future.delayed(const Duration(milliseconds: 200));
      if(event.search.trim().isNotEmpty){
        list = event.terminales.where((element) => 
          element.codEstacion.toUpperCase().contains(event.search.toUpperCase()))
          .toList();
      }

      emit.call(ChipTerminalLoaded(list));
    });
  }
}
