import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/precaucion_line.dart';

part 'chip_precauciones_event.dart';
part 'chip_precauciones_state.dart';

class ChipPrecaucionesBloc extends Bloc<ChipPrecaucionesEvent, ChipPrecaucionesState> {
  ChipPrecaucionesBloc() : super(ChipPrecaucionesInitial()) {
    on<ChipPrecaucionesSearchEvent>((event, emit) async {
      emit.call(ChipPrecaucionesLoading());
      List<PrecaucionLine> list = event.precaucion;
       
      await Future.delayed(const Duration(milliseconds: 200));

      if(event.search.trim().isNotEmpty){
        list = event.precaucion.where((element) => 
          element.numero.toString().contains(event.search.toUpperCase()) ||
          element.codRamal.toString().contains(event.search.toUpperCase()))
          .toList();
      }

      emit.call(ChipPrecaucionesLoaded(list));
    });
  }
}
