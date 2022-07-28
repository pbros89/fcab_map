import 'package:bloc/bloc.dart';
import 'package:fcab_map/models/detalle_via_libre.dart';
import 'package:fcab_map/models/via_libre_line.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../../services/mock/geo_service_mock.dart';

part 'detail_via_libre_event.dart';
part 'detail_via_libre_state.dart';

class DetailViaLibreBloc extends Bloc<DetailViaLibreEvent, DetailViaLibreState> {
  final GeoServiceMock _geoServiceMock = GeoServiceMock();
  DetailViaLibreBloc() : super(const DetailViaLibreInitial()) {
    on<DetailViaLibreInitEvent>(_onInit);
    on<DetailViaLibreLoadEvent>(_onLoad);
  }

  void _onInit(DetailViaLibreInitEvent event, Emitter<DetailViaLibreState> emit) {
    emit.call(const DetailViaLibreInitial());
  }

  void _onLoad(DetailViaLibreLoadEvent event, Emitter<DetailViaLibreState> emit) async {
      try {
        emit.call(const DetailViaLibreLoading());

        List<DetalleViaLibre> detalles = await _geoServiceMock.loadDetalleViaLibre(event.viaLibreLine.nroVl);

        if(detalles.isEmpty) {
          emit.call(const DetailViaLibreError(message: 'No se encontro detalle'));
        }else{
          emit.call(DetailViaLibreLoaded(
            detalles[0]
          ));
        }
        
      } catch (e) {
        emit.call(DetailViaLibreError(message: e.toString()));
      }
  }
}
