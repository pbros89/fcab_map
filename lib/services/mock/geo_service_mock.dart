import 'dart:convert';

import 'package:fcab_map/models/contador_carro.dart';
import 'package:fcab_map/models/contador_loco.dart';
import 'package:fcab_map/models/detalle_carro.dart';
import 'package:fcab_map/models/detalle_loco.dart';
import 'package:fcab_map/models/detalle_via_libre.dart';
import 'package:fcab_map/models/detector_desrielo_point.dart';
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

  Future<List<EstacionPoint>> loadEstacionesPoint(String codRamal) async {
    List jsonData = await _readJson('assets/json/estaciones.json');
    List<EstacionPoint> data = jsonData
        .map((e) {
          List<double> geo = UtmToGeo(e['utm_x'] ?? 0, e['utm_y'] ?? 0);
          e['lat'] = geo[0];
          e['lon'] = geo[1];
          return EstacionPoint.fromJson(e);
        })
        .where(
            (element) => (element.codRamal == codRamal || codRamal == 'TODOS'))
        .toList();

    //print(data);

    return data;
  }

  Future<List<TerminalPoint>> loadTerminalesPoint(String codRamal) async {
    List jsonData = await _readJson('assets/json/estaciones_terminales.json');
    List<TerminalPoint> data = jsonData
        .where((e) => e['tipo'].toString() == 'TERMINAL')
        .map((e) {
          List<double> geo = UtmToGeo(e['utm_x'] ?? 0, e['utm_y'] ?? 0);
          e['lat'] = geo[0];
          e['lon'] = geo[1];
          return TerminalPoint.fromJson(e);
        })
        .where(
            (element) => (element.codRamal == codRamal || codRamal == 'TODOS'))
        .toList();

    return data;
  }

  Future<List<PrecaucionLine>> loadPrecaucionesActivas(String codRamal, List<RamalPoint> ramalesData, String tipoPrecaucion) async {
    List jsonData = await _readJson('assets/json/precauciones.json');
    //List ramalesData = await _loadRamalesData();

    List<PrecaucionLine> data = jsonData
        .map((e) {
          PrecaucionLine t = PrecaucionLine.fromJson(e);
          return t;
        })
        .where(
            (element) => (element.codRamal == codRamal && element.tipo == tipoPrecaucion || 
              codRamal == 'TODOS' && element.tipo == tipoPrecaucion))
        .toList();

    for (int i = 0; i < data.length; i++) {
      List<RamalPoint> ramalPoints = _loadRamalPoints(
          ramalesData: ramalesData,
          codRamal: data[i].codRamal,
          kmIni: data[i].kmDesde.toDouble(),
          kmFin: data[i].kmHasta.toDouble());

      data[i] = data[i].copyWith(listPoints: ramalPoints);
    }

    return data;
  }

  Future<List<TrenPoint>> loadTrenesPoint(String codRamal) async {
    List jsonData = await _readJson('assets/json/trenes.json');
    List<TrenPoint> data = jsonData
        .map((e) {
          List<double> geo = UtmToGeo(e['utm_x'] ?? 0, e['utm_y'] ?? 0);
          e['lat'] = geo[0];
          e['lon'] = geo[1];
          TrenPoint t = TrenPoint.fromJson(e);
          return t;
        })
        .where(
            (element) => (element.codRamal == codRamal || codRamal == 'TODOS'))
        .toList();

    return data;
  }

  Future<List<ContadorLoco>> loadContadorLocomotoras(String estacion) async {
    List jsonData = await _readJson('assets/json/contador_locos.json');
    List<ContadorLoco> data = jsonData
        .map((e) {
          ContadorLoco t = ContadorLoco.fromJson(e);
          return t;
        })
        .where((element) => element.estacion == estacion)
        .toList();

    return data;
  }

  Future<List<ContadorCarro>> loadContadorCarros(String estacion) async {
    List jsonData = await _readJson('assets/json/contador_carros.json');
    List<ContadorCarro> data = jsonData
        .map((e) {
          ContadorCarro t = ContadorCarro.fromJson(e);
          return t;
        })
        .where((element) => element.estacion == estacion)
        .toList();
    print(data);
    return data;
  }

  Future<List<DetalleLoco>> loadDetalleLocomotoras(
      String estacion, String linea, String marMante) async {
    List jsonData = await _readJson('assets/json/detalle_locos.json');
    List<DetalleLoco> data = jsonData
        .map((e) {
          DetalleLoco t = DetalleLoco.fromJson(e);
          return t;
        })
        .where((element) =>
            element.estacion == estacion &&
            element.linea == linea &&
            element.marMante == marMante)
        .toList();

    return data;
  }

  Future<List<DetalleCarro>> loadDetalleCarros(
      String estacion, String tipo, String linea, String marcaMante) async {
    List jsonData = await _readJson('assets/json/detalle_carros.json');
    List<DetalleCarro> data = jsonData
        .map((e) {
          DetalleCarro t = DetalleCarro.fromJson(e);
          return t;
        })
        .where((element) =>
            element.estacion == estacion &&
            element.tipoCarro == tipo &&
            element.linea == linea &&
            element.marcaMante == marcaMante)
        .toList();

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

  Future<List<ViaCedidaLine>> loadViasCedidas(String codRamal, List<RamalPoint> ramalesData) async {
    List jsonData = await _readJson('assets/json/vias_cedidas.json');
    //List ramalesData = await _loadRamalesData();

    List<ViaCedidaLine> data = jsonData
        .map((e) {
          ViaCedidaLine t = ViaCedidaLine.fromJson(e);
          return t;
        })
        .where((element) =>
            (element.ramalOrigen == codRamal || codRamal == 'TODOS'))
        .toList();

    for (int i = 0; i < data.length; i++) {
      List<RamalPoint> ramalPoints = _loadRamalPoints(
          ramalesData: ramalesData,
          codRamal: data[i].ramalOrigen,
          kmIni: data[i].kmIni.toDouble(),
          kmFin: data[i].kmFin.toDouble());

      data[i] = data[i].copyWith(ramalPoints: ramalPoints);
    }

    return data;
  }

  Future<List<ViaLibreLine>> loadViasLibres(String codRamal, List<RamalPoint> ramalesData) async {
    List jsonData = await _readJson('assets/json/vias_libres.json');
    //List ramalesData = await _loadRamalesData();

    List<ViaLibreLine> data = jsonData
        .map((e) {
          ViaLibreLine t = ViaLibreLine.fromJson(e);
          return t;
        })
        .where((element) =>
            (element.ramalOrigen == codRamal || codRamal == 'TODOS'))
        .toList();


    for (int i = 0; i < data.length; i++) {
      List<RamalPoint> ramalPoints =  _loadRamalPoints(
          ramalesData: ramalesData,
          codRamal: data[i].ramalOrigen,
          kmIni: data[i].kmPosVl,
          kmFin: data[i].kmFinalVl);

      data[i] = data[i].copyWith(ramalPoints: ramalPoints);
    }

    return data;
  }

  Future<List<TrenMr>> loadTrenMr(int nroTren, int nroProg) async {
    List jsonData = await _readJson('assets/json/tren_mr.json');
    List<TrenMr> data = jsonData
        .map((e) {
          TrenMr t = TrenMr.fromJson(e);
          return t;
        })
        .where((element) => element.nrotrenmr == nroTren)
        .toList();

    return data;
  }

  Future<List<TrenTripulacion>> loadTrenTripulacion(
      int nroTren, int nroProg) async {
    List jsonData = await _readJson('assets/json/tren_tripulacion.json');
    List<TrenTripulacion> data = jsonData
        .map((e) {
          TrenTripulacion t = TrenTripulacion.fromJson(e);
          return t;
        })
        .where((element) => element.nroTren == nroTren)
        .toList();

    return data;
  }

  Future<List<TerminalAcido>> loadTerminalAcido(String codTerminal) async {
    List jsonData = await _readJson('assets/json/terminal_acido.json');
    List<TerminalAcido> data = jsonData
        .map((e) {
          TerminalAcido t = TerminalAcido.fromJson(e);
          return t;
        })
        .where((element) => element.codTerminal == codTerminal)
        .toList();

    return data;
  }

  Future<List<DetalleViaLibre>> loadDetalleViaLibre(int nroVl) async {
    List jsonData = await _readJson('assets/json/vias_libres_det.json');
    List<DetalleViaLibre> data = jsonData
        .map((e) {
          DetalleViaLibre t = DetalleViaLibre.fromJson(e);
          return t;
        })
        .where((element) => element.pkNroVl == nroVl)
        .toList();

    return data;
  }

  Future<List<DetectorDesrieloPoint>> loadDetectoresDesrieloPoints(
      String codRamal, List<RamalPoint> ramalesData) async {
    List jsonData = await _readJson('assets/json/ddd.json');
    //List ramalesData = await _loadRamalesData();

    List<DetectorDesrieloPoint> data = jsonData
        .map((e) {
            //print(e);
          RamalPoint? point =  _loadRamalPoint(
            ramalesData: ramalesData, 
            codRamal: e['ramal'], 
            km: e['km']);

          if(point != null) {
            List<double> geo = UtmToGeo(point.utmX, point.utmY);
              e['lat'] = geo[0];
              e['lon'] = geo[1];
          }

          return DetectorDesrieloPoint.fromJson(e);
        })
        .where((element) => 
          (element.ramal == codRamal || codRamal == 'TODOS') && 
          !(element.lat == 0 && element.lon == 0))
        .toList();

    /*List<DetectorDesrieloPoint> data2 = await compute(
      parseDetector, {
        'jsonData': jsonData,
        'ramalesData' : ramalesData,
        'codRamal' : codRamal
      });*/

    return data;
  }

  List<DetectorDesrieloPoint> parseDetector(Map params) {
     List<DetectorDesrieloPoint> data = params['jsonData']
        .map((e) {
            //print(e);
          RamalPoint? point =  _loadRamalPoint(
            ramalesData: params['ramalesData'], 
            codRamal: e['ramal'], 
            km: e['km']);

          if(point != null) {
            List<double> geo = UtmToGeo(point.utmX, point.utmY);
              e['lat'] = geo[0];
              e['lon'] = geo[1];
          }

          return DetectorDesrieloPoint.fromJson(e);
        })
        .where((element) => 
          (element.ramal == params['codRamal'] || params['codRamal'] == 'TODOS') && 
          !(element.lat == 0 && element.lon == 0))
        .toList();
      
      return data;
  }

  List<RamalPoint> _loadRamalPoints(
      {required List<RamalPoint> ramalesData,
      required String codRamal,
      double kmIni = -1,
      double kmFin = -1}) {
    List<RamalPoint> data = ramalesData
        .where((e) =>
            //BUSCAR SOLO POR RAMAL
            e.codRamal == codRamal && kmIni == -1 ||
            //BUSCAR POR RAMAL Y KM MAYOR IGUAL AL INICIO
            e.codRamal== codRamal &&
                e.kilometraje >= kmIni &&
                kmFin == -1 ||
            //BUSCAR POR RAMAL, KM INICIO Y KM FIN
            e.codRamal == codRamal &&
                e.kilometraje >= kmIni &&
                e.kilometraje <= kmFin ||
            //BUSCAR POR RAMAL, KM FIN Y KM INICIO
            e.codRamal == codRamal &&
                e.kilometraje >= kmFin &&
                e.kilometraje <= kmIni)
        .toList();

    return data;
  }

  RamalPoint? _loadRamalPoint({
    required List<RamalPoint> ramalesData,
    required String codRamal,
    required double km,
  }) {
    try {
      return ramalesData.firstWhere((e) =>
          //BUSCAR POR RAMAL, KM
          e.codRamal == codRamal && e.kilometraje >= km);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<List<RamalPoint>> loadRamalesData() async {

    List ramalesData = await _readJson('assets/json/ramales.json');

    return ramalesData.map((data) {List<double> geo = UtmToGeo(data['utm_x'], data['utm_y']);
      data['lat'] = geo[0];
      data['lon'] = geo[1];
      return RamalPoint.fromJson(data);
    }).toList();
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
    List jsonData =
        await _readJson2('assets/json/utmToGeo/$archivo.json');

    List data = jsonData.map((e) {
      double x = double.parse(e['ESTE'].toString());
      double y = double.parse(e['NORTE'].toString());
      List<double> geo = UtmToGeo(x, y);
      e['LAT'] = geo[0];
      e['LON'] = geo[1];
      return e;
    }).toList();

    String html = '<html><head></head><body><table><tr>';
    Map<String, dynamic> item = data[0];
    for (var element in item.keys) {
      html += '<td>$element</td>';
    }
    html += '</tr>';

    for (var element in data) {
      html += '<tr>';
      for (var key in item.keys) {
        html += '<td>${element[key].toString()}</td>';
      }
      html += '</tr>';
    }
    html += '</table></body></html>';

    print(html);

    return data;
  }
}
