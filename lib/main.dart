import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<Polyline>> polylines;

  Future<List<Polyline>> getPolylines() async {
    var polyLines = [
      Polyline(
        points: [
          LatLng(50.5, -0.09),
          LatLng(51.3498, -6.2603),
          LatLng(53.8566, 2.3522),
        ],
        strokeWidth: 4.0,
        color: Colors.amber,
      ),
    ];
    await Future.delayed(Duration(seconds: 3));
    return polyLines;
  }

  @override
  void initState() {
    polylines = getPolylines();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var points = <LatLng>[
      LatLng(51.5, -0.09),
      LatLng(53.3498, -6.2603),
      LatLng(48.8566, 2.3522),
    ];

    var pointsGradient = <LatLng>[
      LatLng(55.5, -0.09),
      LatLng(54.3498, -6.2603),
      LatLng(52.8566, 2.3522),
    ];

    return Scaffold(
        appBar: AppBar(title: const Text('Prueba mapa')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FutureBuilder<List<Polyline>>(
            future: polylines,
            builder:
                (BuildContext context, AsyncSnapshot<List<Polyline>> snapshot) {
              debugPrint('snapshot: ${snapshot.hasData}');
              if (snapshot.hasData) {
                return Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text('Polylines'),
                    ),
                    Flexible(
                      child: FlutterMap(
                        options: MapOptions(
                          center: LatLng(51.5, -0.09),
                          zoom: 5.0,
                          onTap: (tapPosition, point) {
                            setState(() {
                              debugPrint('onTap');
                              polylines = getPolylines();
                            });
                          },
                        ),
                        layers: [
                          TileLayerOptions(
                              urlTemplate:
                                  'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                              subdomains: ['a', 'b', 'c']),
                          PolylineLayerOptions(
                            polylines: [
                              Polyline(
                                points: points,
                                strokeWidth: 3.0,
                                color: Colors.purple,
                              ),
                            ],
                          ),
                          PolylineLayerOptions(
                            polylines: [
                              Polyline(
                                points: pointsGradient,
                                strokeWidth: 3.0,
                                gradientColors: [
                                  const Color(0xffE40203),
                                  const Color(0xffFEED00),
                                  const Color(0xff007E2D),
                                ],
                              ),
                            ],
                          ),
                          MarkerLayerOptions(
                            markers: [
                              Marker(point: LatLng(51.5, -0.09), builder: (_) => const Icon(Icons.cancel_rounded, color: Colors.red)),
                              Marker(point: LatLng(53.3498, -6.2603), builder: (_) => const Icon(Icons.train,color: Colors.green)),
                              Marker(point: LatLng(48.8566, 2.3522), builder: (_) =>
                                  GestureDetector(
                                    child: const Icon(Icons.business),
                                    onTap: () => showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context)=> Card(
                                          child: Column(
                                            children: [
                                              Text("Title", style: Theme.of(context).textTheme.displaySmall,),
                                              Divider()
                                            ],
                                          ),
                                        )
                                  )))
                            ],
                          ),


                          CircleLayerOptions(
                            circles: [
                              CircleMarker(point: LatLng(55.5, -0.09), radius: 20, color: Colors.blueAccent, borderColor: Colors.black, borderStrokeWidth: 3,)
                            ]
                          )

                        ],
                      ),
                    ),
                  ],
                );
              }
              return const Text(
                  'Getting map data...\n\nTap on map when complete to refresh map data.');
            },
          ),
        ));
  }
}
