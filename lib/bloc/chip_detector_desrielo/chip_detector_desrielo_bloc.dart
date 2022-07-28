import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/detector_desrielo_point.dart';

part 'chip_detector_desrielo_event.dart';
part 'chip_detector_desrielo_state.dart';

class ChipDetectorDesrieloBloc extends Bloc<ChipDetectorDesrieloEvent, ChipDetectorDesrieloState> {
  ChipDetectorDesrieloBloc() : super(ChipDetectorDesrieloInitial()) {
    on<ChipDetectorDesrieloSearchEvent>((event, emit) async {
      emit.call(ChipDetectorDesrieloLoading());
      List<DetectorDesrieloPoint> list = event.detectoresDesrielo;

      await Future.delayed(const Duration(milliseconds: 200));
      if(event.search.trim().isNotEmpty){
        list = event.detectoresDesrielo.where((element) => 
          element.idDetector.toString().contains(event.search.toUpperCase()) ||
          element.ramal.toUpperCase().contains(event.search.toUpperCase()))
          .toList();
      }

      emit.call(ChipDetectorDesrieloLoaded(list));
    });
  }
}
