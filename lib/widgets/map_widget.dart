import 'package:fcab_map/models/estacion_point.dart';
import 'package:fcab_map/models/precaucion_point.dart';
import 'package:fcab_map/models/ramal_point.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:fcab_map/widgets/popup_info_estacion_widget.dart';
import 'package:fcab_map/widgets/popup_info_tren_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatelessWidget {
  final MapController _controller = MapController();
  final PopupController _popupLayerController = PopupController();

  final List<String> ramales;
  final Map<String, List<RamalPoint>> ramalesData;
  final List<EstacionPoint> estacionesData;
  final List<TrenPoint> trenesData;
  final List<PrecaucionPoint> precaucionesData;

  MapWidget({
    Key? key,
    required this.ramales,
    required this.ramalesData,
    required this.estacionesData,
    required this.trenesData,
    required this.precaucionesData,
  }) : super(key: key) {
    _controller.mapEventStream.listen((event) {
      print(event.toString());
    });

    _controller.onReady.then((value) => print("READY = ${value.toString()}"));
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _controller,
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
        maxZoom: 16,
        minZoom: 10,
        interactiveFlags: InteractiveFlag.doubleTapZoom |
            InteractiveFlag.drag |
            InteractiveFlag.pinchZoom |
            InteractiveFlag.pinchMove,
      ),
      layers: getLayers(context),
    );
  }

  loadLineRamal(String ramal) {
    return PolylineLayerOptions(
      polylines: [
        Polyline(
          points:
              ramalesData[ramal]?.map((e) => LatLng(e.lat, e.lon)).toList() ??
                  [],
          strokeWidth: 3.0,
          color: ramal == 'PPAL' ? Colors.lightBlue : Colors.amber,
        ),
      ],
    );
  }

  loadMarkerEstaciones(BuildContext context) {
    /*return  MarkerClusterLayerOptions(
      maxClusterRadius: 50,
      size: const Size(40, 40),
      fitBoundsOptions: const FitBoundsOptions(
        padding: EdgeInsets.all(30),
      ),
      markers: estacionesData
          .map((e) => Marker(
              point: LatLng(e.lat, e.lon),
              builder: (_) => GestureDetector(
                  child: Tooltip(
                    message: e.codEstacion,
                    child: const Icon(
                      Icons.store,
                      color: Colors.indigo,
                      size: 30,
                    ),
                  ),
                  onDoubleTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (_) => pnlInfoEstacion(_, e));
                  },
                  onTap: () {
                    final latLng = LatLng(e.lat, e.lon);
                    _controller.move(latLng, 15);
                  })))
          .toList(),
      polygonOptions: const PolygonOptions(
          borderColor: Colors.indigo,
          color: Colors.black12,
          borderStrokeWidth: 3),
      builder: (context, markers) {
        return FloatingActionButton(
          child: Text(markers.length.toString()),
          onPressed: null,
        );
      },
    );*/

    return estacionesData
        .map((e) => Marker(
            point: LatLng(e.lat, e.lon),
            builder: (_) => InkWell(
                child: Tooltip(
                  message: e.codEstacion,
                  child: const Icon(
                    Icons.store,
                    color: Colors.indigo,
                    size: 30,
                  ),
                ),
                onDoubleTap: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (_) => PopupInfoEstacionWidget(
                            estacionPoint: e,
                          ));
                },
                onTap: () {
                  final latLng = LatLng(e.lat, e.lon);
                  _controller.move(latLng, 15);
                })))
        .toList();
  }

  loadMarkerTrenes(BuildContext context) {
    return trenesData
        .map((e) => Marker(
            point: LatLng(e.lat, e.lon),
            builder: (_) => GestureDetector(
                  child: Tooltip(
                    message: e.nroTren.toString(),
                    child: const Icon(
                      Icons.train,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                  onTap: () {
                    final latLng = LatLng(e.lat, e.lon);
                    _controller.move(latLng, 15);
                  },
                  onDoubleTap: () {
                    showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        builder: (_) => PopupInfoTrenWidget(trenPoint: e));
                  },
                )))
        .toList();
  }

  loadLinePrecauciones() {
    return PolylineLayerOptions(
        polylineCulling: true,
        polylines: precaucionesData
            .map((e) => Polyline(
                  points: [
                    LatLng(e.latDesde, e.lonDesde),
                    LatLng(e.latHasta, e.lonHasta)
                  ],
                  strokeWidth: 5.0,
                  color: Colors.red,
                  isDotted: false,
                ))
            .toList());
  }

  getLayers(BuildContext context) {
    final List<LayerOptions> layers = [];

    layers.add(TileLayerOptions(
        urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
        subdomains: ['a', 'b', 'c']));

    layers.add(loadLinePrecauciones());

    for (String ramal in ramales) {
      layers.add(loadLineRamal(ramal));
    }

    //layers.add(getAllMarker(context));

    layers.add(PopupMarkerLayerOptions(
        popupController: _popupLayerController,
        markers: getAllMarker(context),
        markerRotateAlignment:
            PopupMarkerLayerOptions.rotationAlignmentFor(AnchorAlign.top),
        popupBuilder: (BuildContext context, Marker marker) => const Card(
              child: Text("marca"),
            )));

    return layers;
  }

  getAllMarker(BuildContext context) {
    List<Marker> markers = [];

    markers.addAll(loadMarkerEstaciones(context));
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
