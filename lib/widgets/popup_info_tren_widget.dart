import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopupInfoTrenWidget extends StatelessWidget {
  final TrenPoint trenPoint;
  const PopupInfoTrenWidget({Key? key, required this.trenPoint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Center(
        child: SizedBox(
          width: 400,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                header(context),
                Expanded(
                  child: TabBarView(
                    //physics: const BouncingScrollPhysics(),
                    children: [pnlGeneral(), pnlDetalle1(), pnlDetalle2()],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  header(context) {
    final settings = BlocProvider.of<GlobalSettingBloc>(context);

    final headerColor = Theme.of(context).scaffoldBackgroundColor;
    final primaryText = !settings.state.isDark
        ? Theme.of(context).textTheme
        : Theme.of(context).primaryTextTheme;

    return Material(
      color: headerColor,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tren ${trenPoint.nroTren.toString()}",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                IconButton(
                    icon: const Icon(Icons.share),
                    splashRadius: 20,
                    onPressed: () => showDialog(
                        context: context,
                        builder: (_) => const Center(
                              child: SizedBox(
                                width: 200,
                                height: 200,
                                child: Card(
                                  child: Center(child: Text("Menu compartir")),
                                ),
                              ),
                            ))),
              ],
            ),
          ),
          TabBar(
            labelColor: primaryText.bodyText1?.color,
            unselectedLabelColor: primaryText.bodyText1?.color,
            tabs: const [
              Tab(child: Text("General")),
              Tab(child: Text("Detalle 1")),
              Tab(child: Text("Detalle 2"))
            ],
          ),
        ],
      ),
    );
  }

  pnlGeneral() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListView(
          children: [
            ListTile(
              dense: true,
              title: const Text("Nombre"),
              subtitle: Text(trenPoint.nombreTren.toString()),
            ),
            ListTile(
              dense: true,
              title: const Text("Evento Actual"),
              subtitle: Text(trenPoint.eventoActual),
            ),
            ListTile(
              dense: true,
              title: const Text("Ramal"),
              subtitle: Text(trenPoint.codRamal),
            ),
            ListTile(
              dense: true,
              title: const Text("Kilometro"),
              subtitle: Text(trenPoint.km.toString()),
            ),
            ListTile(
              dense: true,
              title: const Text("Hora de Salida"),
              subtitle: Text(trenPoint.hrSalida),
            ),
            ListTile(
              dense: true,
              title: const Text("Hora de Llegada"),
              subtitle: Text(trenPoint.hrLlegada),
            ),
            ListTile(
              dense: true,
              title: const Text("Sentido"),
              subtitle: Text(trenPoint.sentido),
            ),
            ListTile(
              dense: true,
              title: const Text("Velocidad"),
              subtitle: Text(trenPoint.velocidad.toString()),
            ),
          ],
        ),
      ),
    );
  }

  pnlDetalle1() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(child: Center(child: Text("Detalle 1"))),
    );
  }

  pnlDetalle2() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(child: Center(child: Text("Detalle 2"))),
    );
  }
}
