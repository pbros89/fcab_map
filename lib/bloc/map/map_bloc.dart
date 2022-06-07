// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fcab_map/models/estacion_inactiva.dart';
import 'package:fcab_map/models/estacion_point.dart';
import 'package:fcab_map/models/precaucion_line.dart';
import 'package:fcab_map/models/terminal_point.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:fcab_map/models/via_cedida_line.dart';
import 'package:fcab_map/models/via_libre_line.dart';
import 'package:fcab_map/services/mock/geo_service_mock.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:meta/meta.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final GeoServiceMock _geoServiceMock = GeoServiceMock();
  MapController? mapController;

  MapBloc() : super(MapInitialState()) {
    on<MapLoadEvent>((event, emit) async {
      try {
        emit.call(MapLoadingState());
        List<EstacionPoint> estaciones = [];
        List<EstacionInactiva> estacionesInactivas = [];
        List<TerminalPoint> terminales = [];
        List<PrecaucionLine> precauciones = [];
        List<TrenPoint> trenes = [];
        List<ViaCedidaLine> viasCedidas = [];
        List<ViaLibreLine> viasLibres = [];
        List detectoresDesrielo = [];

        //CARGANDO DATA DE RAMALES SELECCIONADOS

        //await Future.delayed(const Duration(seconds: 2),);

        if (event.showEstaciones) {
          estaciones = await _geoServiceMock.loadEstacionesPoint();
          estacionesInactivas = await _geoServiceMock.loadEstacionesInactivas();
        }

        if (event.showPrecauciones) {
          precauciones = await _geoServiceMock.loadPrecaucionesActivas();
        }

        if (event.showTrenes) {
          trenes = await _geoServiceMock.loadTrenesPoint();
        }

        if (event.showTerminales) {
          terminales = await _geoServiceMock.loadTerminalesPoint();
        }

        if (event.showEstaciones) {
          estaciones = await _geoServiceMock.loadEstacionesPoint();
          estacionesInactivas = await _geoServiceMock.loadEstacionesInactivas();
        }

        if (event.showViasCedidas) {
          viasCedidas = await _geoServiceMock.loadViasCedidas();
        }

        if (event.showViasLibres) {
          viasLibres = await _geoServiceMock.loadViasLibres();
        }


        //List lista = await _geoServiceMock.loadUTMGEO('gps_estacion');
        

        emit.call(MapLoadedState(
            estaciones: estaciones,
            estacionesInactivas: estacionesInactivas,
            trenes: trenes,
            precauciones: precauciones, 
            terminales: terminales,
            viasCedidas: viasCedidas,
            viasLibres: viasLibres,
            detectoresDesrielo: detectoresDesrielo));

      } on Exception catch (e) {
        print(e);
        emit.call(MapErrorState(message: e.toString()));
      }
    });
  }
}
