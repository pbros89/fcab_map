import 'package:fcab_map/bloc/detail_estacion/detail_estacion_bloc.dart';
import 'package:fcab_map/bloc/detail_tren/detail_tren_bloc.dart';
import 'package:fcab_map/bloc/detail_via_libre/detail_via_libre_bloc.dart';
import 'package:fcab_map/bloc/map/map_bloc.dart';
import 'package:fcab_map/constants/views_maps.dart';
import 'package:fcab_map/widgets/map/popup_info_via_libre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';

import '../../bloc/detail_terminal/detail_terminal_bloc.dart';
import '../../utils/dialog_utils.dart';
import 'popup_info_estacion.dart';
import 'popup_info_terminal.dart';
import 'popup_info_tren.dart';

class MapWidget extends StatelessWidget {
  late MapController mapController;
  final PopupController _popupLayerController = PopupController();
  final MapState mapState;
  late List<LayerOptions> layers;

  MapWidget({Key? key, required this.mapState}) : super(key: key) {
    mapController = MapController();
    mapController.mapEventStream.listen((event) {
      print(event.toString());
    });

    
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<LayerOptions>>(
      future: getLayers(context),
      builder: (context, snapshot) {

        return FlutterMap(
          options: MapOptions(
            plugins: [
              MarkerClusterPlugin(),
            ],
            center: LatLng(-23.650000, -70.400002),
            zoom: 12.0,
            onTap: (tapPosition, point) {
              _popupLayerController.hideAllPopups();
              debugPrint(point.toString());
            },
            onMapCreated: (c) {
              mapController = c;
              final provider = BlocProvider.of<MapBloc>(context);
              provider.mapController = mapController;
            },
            maxZoom: 17,
            minZoom: 3,
            interactiveFlags: InteractiveFlag.doubleTapZoom |
                InteractiveFlag.drag |
                InteractiveFlag.pinchZoom |
                InteractiveFlag.pinchMove,
          ),
          layers: snapshot.data ?? []
        );
      }
      
    );
  }

  loadMarkerEstaciones(BuildContext context) {
    return mapState.estaciones.map((e) {
      final inactivas = mapState.estacionesInactivas
          .where((element) => element.estacion == e.codEstacion)
          .toList();

      return Marker(
        point: LatLng(e.lat, e.lon),
        builder: (_) => RotatedBox(
            quarterTurns: 3,
            child: IconButton(
              icon: Icon(
                Icons.play_arrow,
                color: inactivas.isNotEmpty ? Colors.red[300] : Colors.blue,
              ),
              tooltip: inactivas.isNotEmpty
                  ? '${e.codEstacion}\n\nTipo: ${inactivas[0].tipo}\n\nRestricción: ${inactivas[0].restriccion}'
                  : e.codEstacion,
              onPressed: () {
                final provider = BlocProvider.of<DetailEstacionBloc>(context);
                provider.add(DetailEstacionLoadEvent(estacionPoint: e));

                showMyDialog(
                  context: context,
                  child: PopupInfoEstacion(
                    estacionPoint: e,
                  ),
                );
              },
            )),
      );
    }).toList();
  }

  loadMarkerTerminales(BuildContext context) {
    return mapState.terminales
        .map((e) => Marker(
            point: LatLng(e.lat, e.lon),
            builder: (_) => IconButton(
                  icon: const Icon(Icons.stop, color: Colors.teal),
                  tooltip: e.codEstacion,
                  onPressed: () {
                    final provider =
                        BlocProvider.of<DetailTerminalBloc>(context);
                    provider.add(DetailTerminalLoadEvent(terminalPoint: e));

                    showMyDialog(
                        context: context,
                        child: PopupInfoTerminal(
                          terminalPoint: e,
                        ));
                  },
                )))
        .toList();
  }

  loadMarkerTrenes(BuildContext context) {
    return mapState.trenes
        .map((e) => Marker(
            anchorPos: AnchorPos.exactly(Anchor(10, 0)),
            point: LatLng(e.lat, e.lon),
            builder: (_) => GestureDetector(
                  child: Tooltip(
                    message: 'Tren ${e.nroTren.toString()}',
                    child: Icon(
                      Icons.location_on,
                      color: (e.sentido == 'S' ? Colors.red : Colors.blue),
                      size: 40,
                    ),
                  ),
                  onTap: () {
                    final provider = BlocProvider.of<DetailTrenBloc>(context);
                    provider.add(DetailTrenLoadEvent(trenPoint: e));

                    showMyDialog(
                        context: context, child: PopupInfoTren(trenPoint: e));
                  },
                )))
        .toList();
  }

  loadLinePrecauciones() {
    List<Polyline> lines = [];
    for (var pre in mapState.precauciones) {
      lines.add(Polyline(
        points: pre.listPoints.map((e) => LatLng(e.lat, e.lon)).toList(),
        strokeWidth: 8.0,
        color: Colors.purple.withOpacity(0.3),
        isDotted: false,
      ));
    }
    return PolylineLayerOptions(polylineCulling: true, polylines: lines);
  }

  loadLineViasCedidas() {
    List<Polyline> lines = [];
    for (var vc in mapState.viasCedidas) {
      lines.add(Polyline(
        points: vc.ramalPoints.map((e) => LatLng(e.lat, e.lon)).toList(),
        strokeWidth: 5.0,
        color: Colors.green,
        isDotted: false,
      ));
    }
    return PolylineLayerOptions(polylineCulling: true, polylines: lines);
  }

  loadMarkerViasLibresEnd(BuildContext context) {
    return mapState.viasLibres
    .where((element) => element.ramalPoints.isNotEmpty )
    .map((e) {
      /*print(e.ramalPoints.last.lon.toString() +
          ' ' +
          e.ramalPoints.last.lat.toString());*/
          
      return Marker(
        point: LatLng(e.ramalPoints.last.lat, e.ramalPoints.last.lon),
        builder: (_) => Tooltip(
          message: 'VL: ${e.nroVl.toString()}',
          child: IconButton(
            icon: Icon(Icons.circle, 
              color: Colors.lightBlue[200]),
            onPressed: () {
                final provider = BlocProvider.of<DetailViaLibreBloc>(context);
                provider.add(DetailViaLibreLoadEvent(viaLibreLine: e));

                showMyDialog(
                  context: context,
                  child: PopupInfoViaLibre(
                    viaLibreLine: e,
                  ),
                );
              },
          )),
      );
    }).toList();
  }

  loadLineViasLibres() {
    List<Polyline> lines = [];
    for (var vc in mapState.viasLibres) {
      lines.add(Polyline(
        points: vc.ramalPoints.map((e) => LatLng(e.lat, e.lon)).toList(),
        strokeWidth: 5.0,
        color: Colors.lightBlue[200]!,
        isDotted: false,
      ));
    }
    return PolylineLayerOptions(polylineCulling: true, polylines: lines);
  }

  loadDetectoresDesrielo(BuildContext context) {
    //print(mapState.detectoresDesrielo);
    return mapState.detectoresDesrielo.map((e) {
      //print(e);
      return Marker(
        point: LatLng(e.lat, e.lon),
        builder: (_) => IconButton(
          icon: Icon(
            Icons.contactless,
            color: e.habilitado == 'SI' ? Colors.orange : Colors.red,
            size: 20,
          ),
          tooltip: 'DED ${e.idDetector}',
          onPressed: () {
            /*final provider = BlocProvider.of<DetailEstacionBloc>(context);
            provider.add(DetailEstacionLoadEvent(estacionPoint: e));

            showMyDialog(
              context: context,
              child: PopupInfoEstacion(
                estacionPoint: e,
              ),
            );*/
          },
        ),
      );
    }).toList();
  }

  Future<List<LayerOptions>> getLayers(BuildContext context) async {
    final List<LayerOptions> layers = [];

    await Future.microtask(() {
      layers.add(TileLayerOptions(
        urlTemplate: viewsMaps[mapState.typeView],
        subdomains: ['a', 'b', 'c']));

    layers.add(loadLinePrecauciones());
    layers.add(loadLineViasCedidas());
    layers.add(loadLineViasLibres());

    layers.add(MarkerLayerOptions(
      markers: loadMarkerViasLibresEnd(context),
    ));

    layers.add(MarkerLayerOptions(
      markers: loadMarkerEstaciones(context),
    ));

    layers.add(MarkerLayerOptions(
      markers: loadMarkerTerminales(context),
    ));

    layers.add(MarkerLayerOptions(
      markers: loadDetectoresDesrielo(context)
    ));

    layers.add(MarkerClusterLayerOptions(
      maxClusterRadius: 30,
      size: const Size(40, 40),
      fitBoundsOptions: const FitBoundsOptions(
        padding: EdgeInsets.all(30),
      ),
      markers: getAllMarker(context),
      polygonOptions: const PolygonOptions(
          borderColor: Colors.red, color: Colors.black12, borderStrokeWidth: 2),
      builder: (context, markers) {
        return FloatingActionButton(
          backgroundColor: Colors.teal.withOpacity(0.7),
          onPressed: null,
          child: Text(
            markers.length.toString(),
          ),
        );
      },
    ));

    /*layers.add(PopupMarkerLayerOptions(
        popupController: _popupLayerController,
        markers: getAllMarker(context),
        markerRotateAlignment:
            PopupMarkerLayerOptions.rotationAlignmentFor(AnchorAlign.top),
        popupBuilder: (BuildContext context, Marker marker) => const Card(
              child: Text("marca"),
            )));*/

    });
    
    return layers;
  }

  getAllMarker(BuildContext context) {
    List<Marker> markers = [];

    markers.addAll(loadMarkerTrenes(context));

    return markers;
  }

  markerMyLocation() {
    LocationMarkerLayerWidget(
      options: LocationMarkerLayerOptions(
        marker: const DefaultLocationMarker(
          color: Colors.green,
          child: Icon(
            Icons.pin,
            color: Colors.white,
          ),
        ),
        markerSize: const Size(40, 40),
        accuracyCircleColor: Colors.green.withOpacity(0.1),
        headingSectorColor: Colors.green.withOpacity(0.8),
        headingSectorRadius: 120,
        markerAnimationDuration: Duration.zero, // disable animation
      ),
    );
  }
}
