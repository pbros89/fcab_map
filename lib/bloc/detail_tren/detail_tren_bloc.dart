import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/tren_mr.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:fcab_map/models/tren_tripulacion.dart';
import 'package:equatable/equatable.dart';

import '../../services/mock/geo_service_mock.dart';

part 'detail_tren_event.dart';
part 'detail_tren_state.dart';

class DetailTrenBloc extends Bloc<DetailTrenEvent, DetailTrenState> {
  final GeoServiceMock _geoServiceMock = GeoServiceMock();
  DetailTrenBloc() : super(DetailTrenInitial()) {
    on<DetailTrenInitEvent>(_onInit);
    on<DetailTrenLoadEvent>(_onLoad);
  }

  void _onInit(DetailTrenInitEvent event, Emitter<DetailTrenState> emit) {
    emit.call(DetailTrenInitial());
  }

  void _onLoad(DetailTrenLoadEvent event, Emitter<DetailTrenState> emit) async {
      try {
        int sections = 1;
        emit.call(DetailTrenLoading());

        List<TrenMr> materialRodantes = await _geoServiceMock.loadTrenMr(event.trenPoint.nroTren, event.trenPoint.nroProg);
        if(materialRodantes.isNotEmpty) sections++;

        print('materialRodantes' + materialRodantes.length.toString());

        List<TrenTripulacion> tripulaciones = await _geoServiceMock.loadTrenTripulacion(event.trenPoint.nroTren, event.trenPoint.nroProg);
        if(tripulaciones.isNotEmpty) sections++;

        print('tripulaciones' + tripulaciones.length.toString());
        emit.call(DetailTrenLoaded(
          materialRodantes: materialRodantes,
          tripulaciones: tripulaciones,
          sections: sections
        ));
      } catch (e) {
        emit.call(DetailTrenError(message: e.toString()));
      }
  }
}
