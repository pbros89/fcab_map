import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'filter_map_event.dart';
part 'filter_map_state.dart';

class FilterMapBloc extends Bloc<FilterMapEvent, FilterMapState> {


  FilterMapBloc() : super(const FilterMapInitial()) {
    on<FilterMapInitEvent>((event, emit) async {
      try {
        emit.call(const FilterMapInitial());
      } catch (e) {
        emit.call(FilterMapError(message: e.toString()));
      }
    });

    on<FilterMapChangeEvent>((event, emit) {
      try {
        emit.call(const FilterMapLoading());
        emit.call(FilterMapLoaded(
            showEstaciones: event.showEstaciones,
            showPrecauciones: event.showPrecauciones,
            showTrenes: event.showTrenes,
            showTerminales: event.showTerminales,
            showViasCedidas: event.showViasCedidas,
            showViasLibres: event.showViasLibres,
            showDetectoresDesrielo: event.showDetectoresDesrielo
            ));
      } catch (e) {
        emit.call(FilterMapError(message: e.toString()));
      }
    });
  }
}
