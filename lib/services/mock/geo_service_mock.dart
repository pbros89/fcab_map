import 'dart:convert';

import 'package:fcab_map/models/contador_carro.dart';
import 'package:fcab_map/models/contador_loco.dart';
import 'package:fcab_map/models/detalle_carro.dart';
import 'package:fcab_map/models/detalle_loco.dart';
import 'package:fcab_map/models/estacion_inactiva.dart';
import 'package:fcab_map/models/estacion_point.dart';
import 'package:fcab_map/models/precaucion_line.dart';
import 'package:fcab_map/models/ramal_point.dart';
import 'package:fcab_map/models/terminal_acido.dart';
import 'package:fcab_map/models/terminal_point.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:fcab_map/models/tren_tripulacion.dart';
import 'package:fcab_map/models/via_cedida_line.dart';
import 'package:fcab_map/models/via_libre_line.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:flutter/services.dart';

import '../../models/tren_mr.dart';

class GeoServiceMock {
  Future<List<RamalPoint>> loadRamalPoints({required String codRamal, double kmIni = -1, double kmFin = -1}) async {
    List jsonData = await _readJson('assets/json/ramales.json');

    List<RamalPoint> data =
        jsonData.where((e) => 
          //BUSCAR SOLO POR RAMAL
          e['cod_ramal'] == codRamal && 
          kmIni == -1 ||
          //BUSCAR POR RAMAL Y KM MAYOR IGUAL AL INICIO
          e['cod_ramal'] == codRamal && 
          e['kilometraje'] >= kmIni &&
          kmFin == -1 ||
          //BUSCAR POR RAMAL, KM INICIO Y KM FIN
          e['cod_ramal'] == codRamal && 
          e['kilometraje'] >= kmIni &&
          e['kilometraje'] <= kmFin 
          ).map((e) {
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

  Future<List<TerminalPoint>> loadTerminalesPoint() async {
    List jsonData = await _readJson('assets/json/estaciones_terminales.json');
    List<TerminalPoint> data = jsonData.where((e) => e['tipo'].toString() == 'TERMINAL').map((e) { 
       List<double> geo = UtmToGeo(e['utm_x'] ?? 0, e['utm_y'] ?? 0);
      e['lat'] = geo[0];
      e['lon'] = geo[1];
      return TerminalPoint.fromJson(e);
    }).toList();

    return data;
  }

  Future<List<PrecaucionLine>> loadPrecaucionesActivas() async {
    List jsonData = await _readJson('assets/json/precauciones.json');
    List<PrecaucionLine> data = jsonData.map((e){
      PrecaucionLine t = PrecaucionLine.fromJson(e);
      return t;
    }).toList();

    for (int i = 0; i < data.length; i++) {
      List<RamalPoint> ramalPoints = await loadRamalPoints(
        codRamal: data[i].codRamal, 
        kmIni: data[i].kmDesde.toDouble(),
        kmFin: data[i].kmHasta.toDouble());

      data[i] = data[i].copyWith(listPoints: ramalPoints);
    }

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


  Future<List<ContadorLoco>> loadContadorLocomotoras(String estacion) async {
    List jsonData = await _readJson('assets/json/contador_locos.json');
    List<ContadorLoco> data = jsonData.map((e) {
      ContadorLoco t = ContadorLoco.fromJson(e);
      return t;
    }).where((element) => element.estacion == estacion).toList();

    return data;
  }

  Future<List<ContadorCarro>> loadContadorCarros(String estacion) async {
    List jsonData = await _readJson('assets/json/contador_carros.json');
    List<ContadorCarro> data = jsonData.map((e) {
      ContadorCarro t = ContadorCarro.fromJson(e);
      return t;
    }).where((element) => element.estacion == estacion).toList();

    return data;
  }


  Future<List<DetalleLoco>> loadDetalleLocomotoras(String estacion, String linea, String marMante) async {
    List jsonData = await _readJson('assets/json/detalle_locos.json');
    List<DetalleLoco> data = jsonData.map((e) {
      DetalleLoco t = DetalleLoco.fromJson(e);
      return t;
    }).where((element) => 
      element.estacion == estacion && 
      element.linea == linea &&
      element.marMante == marMante).toList();

    return data;
  }

  Future<List<DetalleCarro>> loadDetalleCarros(String estacion, String linea, String marcaMante) async {
    List jsonData = await _readJson('assets/json/detalle_carros.json');
    List<DetalleCarro> data = jsonData.map((e) {
      DetalleCarro t = DetalleCarro.fromJson(e);
      return t;
    }).where((element) => 
      element.estacion == estacion && 
      element.linea == linea &&
      element.marcaMante == marcaMante).toList();

    return data;
  }

  Future<List<EstacionInactiva>> loadEstacionesInactivas() async {
    List jsonData = await _readJson('assets/json/estaciones_inactivas.json');
    List<EstacionInactiva> data = jsonData.map((e) {
      EstacionInactiva t = EstacionInactiva.fromJson(e);
      return t;
    }).toList();

    return data;
  }


  Future<List<ViaCedidaLine>> loadViasCedidas() async {
    List jsonData = await _readJson('assets/json/vias_cedidas.json');
    List<ViaCedidaLine> data = jsonData.map((e){
      ViaCedidaLine t = ViaCedidaLine.fromJson(e);
      return t;
    }).toList();

    for (int i = 0; i < data.length; i++) {
      List<RamalPoint> ramalPoints = await loadRamalPoints(
        codRamal: data[i].ramalOrigen, 
        kmIni: data[i].kmIni.toDouble(),
        kmFin: data[i].kmFin.toDouble());

      data[i] = data[i].copyWith(ramalPoints: ramalPoints);
    }

    return data;
  }


  Future<List<ViaLibreLine>> loadViasLibres() async {
    List jsonData = await _readJson('assets/json/vias_libres.json');

    
    List<ViaLibreLine> data = jsonData.map((e){
      print(e);
      ViaLibreLine t = ViaLibreLine.fromJson(e);
      return t;
    }).toList();

    print(data); 

    for (int i = 0; i < data.length; i++) {
      List<RamalPoint> ramalPoints = await loadRamalPoints(
        codRamal: data[i].ramalOrigen, 
        kmIni: data[i].kmPosVl,
        kmFin: data[i].kmFinalVl);

      data[i] = data[i].copyWith(ramalPoints: ramalPoints);
    }

    return data;
  }

  Future<List<TrenMr>> loadTrenMr(int nroTren, int nroProg) async {
    List jsonData = await _readJson('assets/json/tren_mr.json');
    List<TrenMr> data = jsonData.map((e) {
      TrenMr t = TrenMr.fromJson(e);
      return t;
    }).where((element) => element.nrotrenmr == nroTren).toList();

    return data;
  }

  Future<List<TrenTripulacion>> loadTrenTripulacion(int nroTren, int nroProg) async {
    List jsonData = await _readJson('assets/json/tren_tripulacion.json');
    List<TrenTripulacion> data = jsonData.map((e) {
      TrenTripulacion t = TrenTripulacion.fromJson(e);
      return t;
    }).where((element) => element.nroTren == nroTren).toList();

    return data;
  }

  Future<List<TerminalAcido>> loadTerminalAcido(String codTerminal) async {
    List jsonData = await _readJson('assets/json/terminal_acido.json');
    List<TerminalAcido> data = jsonData.map((e) {
      TerminalAcido t = TerminalAcido.fromJson(e);
      return t;
    }).where((element) => element.codTerminal == codTerminal).toList();

    return data;
  }

  Future<dynamic> _readJson(String pathJson) async {
    final String response = await rootBundle.loadString(pathJson);
    final data = await json.decode(response);
    return data['items'];
  }

  Future<dynamic> _readJson2(String pathJson) async {
    final String response = await rootBundle.loadString(pathJson);
    final data = await json.decode(response);
    return data;
  }



  //PRUEBA 

  Future<List> loadUTMGEO(String archivo) async {
    List jsonData = await _readJson2('assets/json/utmToGeo/'+archivo+'.json');

    List data = jsonData.map((e) {
      double x  = double.parse(e['ESTE'].toString());
      double y  = double.parse(e['NORTE'].toString());
      List<double> geo = UtmToGeo(x, y);
      e['LAT'] = geo[0];
      e['LON'] = geo[1];
      return e;
    }).toList();




    String html = '<html><head></head><body><table><tr>';
    Map<String, dynamic> item = data[0];
    item.keys.forEach((element) {
      html += '<td>$element</td>';
    });
    html += '</tr>';

    data.forEach((element) {
      html += '<tr>';
      item.keys.forEach((key) {
        html += '<td>${element[key].toString()}</td>';
      });
      html += '</tr>';
    });
    html += '</table></body></html>';

    print(html);

    return data;
  }

}
