import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/via_libre_line.dart';

part 'chip_via_libre_event.dart';
part 'chip_via_libre_state.dart';

class ChipViaLibreBloc extends Bloc<ChipViaLibreEvent, ChipViaLibreState> {
  ChipViaLibreBloc() : super(ChipViaLibreInitial()) {
    on<ChipViaLibreSearchEvent>((event, emit) async {
      emit.call(ChipViaLibreLoading());
      List<ViaLibreLine> list = event.vias;
       
      await Future.delayed(const Duration(milliseconds: 200));

      if(event.search.trim().isNotEmpty){
        list = event.vias.where((element) => 
          element.nroVl.toString().contains(event.search.toUpperCase()))
          .toList();
      }

      emit.call(ChipViaLibreLoaded(list));
    });
  }
}
