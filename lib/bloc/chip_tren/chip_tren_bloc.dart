import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:meta/meta.dart';

part 'chip_tren_event.dart';
part 'chip_tren_state.dart';

class ChipTrenBloc extends Bloc<ChipTrenEvent, ChipTrenState> {
  ChipTrenBloc() : super(ChipTrenInitial()) {
    on<ChipTrenSearchEvent>((event, emit) async {
      emit.call(ChipTrenLoading());
      List<TrenPoint> list = event.trenes;

      await Future.delayed(const Duration(milliseconds: 200));
      if(event.search.trim().isNotEmpty){
        list = event.trenes.where((element) => 
          element.nroTren.toString().contains(event.search))
          .toList();
      }

      emit.call(ChipTrenLoaded(list));
    });
  }
}
