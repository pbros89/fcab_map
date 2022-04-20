// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fcab_map/models/estacion_point.dart';
import 'package:fcab_map/models/precaucion_point.dart';
import 'package:fcab_map/models/ramal_point.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:fcab_map/services/geo_service_mock.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:meta/meta.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final GeoServiceMock _geoServiceMock = GeoServiceMock();

  MapBloc() : super(MapInitialState()) {
    on<MapLoadDataEvent>((event, emit) async {
      try {
        emit.call(MapLoadingState());
        List<EstacionPoint> estacionesData = [];
        Map<String, List<RamalPoint>> ramalesData = {};
        List<PrecaucionPoint> precaucionesData = [];
        List<TrenPoint> trenesData = [];
        List<String> ramales = ['RCUABRA'];

        //CARGANDO DATA DE RAMALES SELECCIONADOS

        if (event.showEstaciones) {
          estacionesData = await _geoServiceMock.loadEstacionesPoint();
        }

        if (event.showPrecauciones) {
          precaucionesData = await _geoServiceMock.loadPrecaucionesPoint();
        }

        if (event.showTrenes) {
          trenesData = await _geoServiceMock.loadTrenesPoint();
        }

        String table = "<table>";
        table += "<tr><td>COD_RAMAL</td>";
        table += "<td>UTM_X</td>";
        table += "<td>UTM_Y</td>";
        table += "<td>KILOMETRO</td>";
        table += "<td>LAT</td>";
        table += "<td>LON</td></tr>";

        if (event.showRamales) {
          for (String ramal in ramales) {
            List<RamalPoint> points =
                await _geoServiceMock.loadRamalPoints(codRamal: ramal);
            String table = "<html><head></head><body><table>";
            table += "<tr><td>COD_RAMAL</td>";
            table += "<td>UTM_X</td>";
            table += "<td>UTM_Y</td>";
            table += "<td>KILOMETRO</td>";
            table += "<td>LAT</td>";
            table += "<td>LON</td></tr>";
            points.forEach((element) {
              table += "<tr><td>" + element.codRamal + "</td>";
              table += "<td>" + element.utmX.toString() + "</td>";
              table += "<td>" + element.utmY.toString() + "</td>";
              table += "<td>" + element.kilometraje.toString() + "</td>";
              table += "<td>" + element.lat.toString() + "</td>";
              table += "<td>" + element.lon.toString() + "</td></tr>";
            });
            ramalesData[ramal] = points;
            table += "</table></body></html>";

            print(table);
          }
        }

        emit.call(MapLoadedState(
            ramales: ramales,
            ramalesData: ramalesData,
            estacionesData: estacionesData,
            trenesData: trenesData,
            precaucionesData: precaucionesData));
      } on Exception catch (e) {
        print(e);
        emit.call(MapErrorState(message: e.toString()));
      }
    });
  }
}
