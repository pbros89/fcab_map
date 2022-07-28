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


        List<TrenTripulacion> tripulaciones = await _geoServiceMock.loadTrenTripulacion(event.trenPoint.nroTren, event.trenPoint.nroProg);
        if(tripulaciones.isNotEmpty) sections++;

        final int cantLocos = materialRodantes.where((element) => element.tipomr == 'L').length;
        final int cantCarros = materialRodantes.where((element) => element.tipomr == 'C').length;
        final int cantCV = materialRodantes.where((element) => element.tipomr == 'C' && element.vacio == 1).length;
        final int cantCC = materialRodantes.where((element) => element.tipomr == 'C' && element.vacio == 0).length;
        final listServicio = materialRodantes.where((element) => element.tipomr == 'C' && element.ssgmr != '').toList();
        const double largoTren = 0;
        const double arrastre = 0;
        final String servicio = listServicio.isNotEmpty ? listServicio[0].ssgmr : 'Sin Servicio';
        final List<Map<String, dynamic>> tipoCarrosContador = [];
        int index = -1;
        Map<String, dynamic> total = {'tipo': 'Total', 'CV': 0, 'CC': 0, 'total': 0};
        for (var element in materialRodantes.where((element) => element.tipomr == 'C')) {
          index = -1;
          for (int i = 0; i < tipoCarrosContador.length; i++) {
            if(tipoCarrosContador[i]['tipo'] == element.modelomr) {
              index = i;
              break;
            }
          }

          if(index == -1) {
             Map<String, dynamic> tipo = {'tipo': element.modelomr  , 'CV': 0, 'CC': 0, 'total': 0};
             if(element.vacio == 1) {
                tipo['CV'] += 1;
              }else{
                tipo['CC'] += 1;
              }
              tipo['total'] += 1;
              tipoCarrosContador.add(tipo);
          }else{
            if(element.vacio == 1) {
                tipoCarrosContador[index]['CV'] += 1;
              }else{
                tipoCarrosContador[index]['CC'] += 1;
              }
              tipoCarrosContador[index]['total'] += 1;
          }
          
          if(element.vacio == 1) {
            total['CV'] += 1;
          }else{
            total['CC'] += 1;
          }

           total['total'] += 1;
        }

        tipoCarrosContador.add(total);

        emit.call(DetailTrenLoaded(
          materialRodantes: materialRodantes,
          tripulaciones: tripulaciones,
          sections: sections,
          cantLocos: cantLocos,
          cantCarros: cantCarros,
          cantCV: cantCV,
          cantCC: cantCC,
          largoTren: largoTren,
          arrastre: arrastre,
          servicio: servicio,
          tipoCarrosContador: tipoCarrosContador
        ));
      } catch (e) {
        emit.call(DetailTrenError(message: e.toString()));
      }
  }
}
