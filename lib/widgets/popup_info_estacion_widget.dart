import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/models/estacion_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopupInfoEstacionWidget extends StatelessWidget {
  final EstacionPoint estacionPoint;
  const PopupInfoEstacionWidget({Key? key, required this.estacionPoint})
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
                    children: [pnlDetalle1(), pnlDetalle2(), pnlDetalle3()],
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
                  "Estación ${estacionPoint.codEstacion.toString()}",
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
              Tab(child: Text("Detalle 1")),
              Tab(child: Text("Detalle 2")),
              Tab(child: Text("Detalle 2"))
            ],
          ),
        ],
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

  pnlDetalle3() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Card(child: Center(child: Text("Detalle 3"))),
    );
  }
}
