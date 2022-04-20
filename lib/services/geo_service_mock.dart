import 'dart:convert';

import 'package:fcab_map/models/estacion_point.dart';
import 'package:fcab_map/models/precaucion_point.dart';
import 'package:fcab_map/models/ramal_point.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/services.dart';

class GeoServiceMock {
  Future<List<RamalPoint>> loadRamalPoints({required String codRamal}) async {
    List jsonData = await _readJson('assets/json/ramales.json');

    List<RamalPoint> data =
        jsonData.where((e) => e['cod_ramal'] == codRamal).map((e) {
      List<double> geo = UtmToGeo(e['utm_x'], e['utm_y']);
      e['lat'] = geo[0];
      e['lon'] = geo[1];
      return RamalPoint.fromJson(e);
    }).toList();

    return data;
  }

  Future<List<String>> loadRamales() async {
    List<String> ramales = [
      'PPAL',
      'RESCONDI',
      'RCMZ',
      'RCUABRA',
      'RAVICTO',
      'RALTONOR',
      'RCPM',
      'RCHUQUI',
      'RSPENCE',
      'RABRA',
      'RPAMPA',
      'RMSG',
      'RMEJIL',
      'RSOCOMPA',
      'RGABY',
      'RINTERAC',
      'RREFIMET'
    ];

    return await Future.delayed(
        const Duration(milliseconds: 200), () => ramales);
  }

  Future<List<EstacionPoint>> loadEstacionesPoint() async {
    List jsonData = await _readJson('assets/json/estaciones.json');
    List<EstacionPoint> data = jsonData.map((e) {
      List<double> geo = UtmToGeo(e['utm_x'] ?? 0, e['utm_y'] ?? 0);
      e['lat'] = geo[0];
      e['lon'] = geo[1];
      return EstacionPoint.fromJson(e);
    }).toList();

    //print(data);

    return data;
  }

  Future<List<PrecaucionPoint>> loadPrecaucionesPoint() async {
    List jsonData = await _readJson('assets/json/precauciones.json');
    //print(jsonData);
    List<PrecaucionPoint> data = jsonData.map((e) {
      List<double> geoDesde =
          UtmToGeo(e['utm_x_desde'] ?? 0, e['utm_y_desde'] ?? 0);
      List<double> geoHasta =
          UtmToGeo(e['utm_x_hasta'] ?? 0, e['utm_y_hasta'] ?? 0);
      e['lat_desde'] = geoDesde[0];
      e['lon_desde'] = geoDesde[1];
      e['lat_hasta'] = geoHasta[0];
      e['lon_hasta'] = geoHasta[1];

      PrecaucionPoint p = PrecaucionPoint.fromJson(e);

      print(p);

      return p;
    }).toList();

    return data;
  }

  Future<List<TrenPoint>> loadTrenesPoint() async {
    List jsonData = await _readJson('assets/json/trenes.json');
    List<TrenPoint> data = jsonData.map((e) {
      List<double> geo = UtmToGeo(e['utm_x'] ?? 0, e['utm_y'] ?? 0);
      e['lat'] = geo[0];
      e['lon'] = geo[1];
      TrenPoint t = TrenPoint.fromJson(e);
      return t;
    }).toList();

    return data;
  }

  Future<dynamic> _readJson(String pathJson) async {
    final String response = await rootBundle.loadString(pathJson);
    final data = await json.decode(response);
    return data['items'];
  }
}
