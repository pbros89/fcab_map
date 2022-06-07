import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/estacion_point.dart';
import 'package:meta/meta.dart';

part 'chip_estacion_event.dart';
part 'chip_estacion_state.dart';

class ChipEstacionBloc extends Bloc<ChipEstacionEvent, ChipEstacionState> {
  ChipEstacionBloc() : super(ChipEstacionInitial()) {
    on<ChipEstacionSearchEvent>((event, emit) async {
      emit.call(ChipEstacionLoading());
      List<EstacionPoint> list = event.estaciones;

      await Future.delayed(const Duration(milliseconds: 200));
      if(event.search.trim().isNotEmpty){
        list = event.estaciones.where((element) => 
          element.codEstacion.toUpperCase().contains(event.search.toUpperCase()))
          .toList();
      }

      emit.call(ChipEstacionLoaded(list));
    });
  }
}
