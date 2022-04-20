import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'filter_map_event.dart';
part 'filter_map_state.dart';

class FilterMapBloc extends Bloc<FilterMapEvent, FilterMapState> {
  bool showEstaciones = false;
  bool showRamales = false;
  bool showPrecauciones = false;
  bool showTrenes = false;

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
            showRamales: event.showRamales,
            showPrecauciones: event.showPrecauciones,
            showTrenes: event.showTrenes));
      } catch (e) {
        emit.call(FilterMapError(message: e.toString()));
      }
    });
  }
}
