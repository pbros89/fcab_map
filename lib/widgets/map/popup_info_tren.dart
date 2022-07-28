import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/models/tren_mr.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/detail_tren/detail_tren_bloc.dart';
import '../../screens/base_screen.dart';

class PopupInfoTren extends StatelessWidget {
  final TrenPoint trenPoint;
  const PopupInfoTren({Key? key, required this.trenPoint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailTrenBloc, DetailTrenState>(
      builder: (context, state) {
        return BaseScreen(
          child: DefaultTabController(
            length: 3,
            child: Center(
              child: SizedBox(
                width: 450,
                height: 450,
                child: Card(
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    header(context, state),
                    Expanded(
                      child: TabBarView(
                        //physics: const BouncingScrollPhysics(),
                        children: getTabViews(state),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  getTabViews(DetailTrenState state) {
    final List<Widget> views = [pnlGeneral(state)];
    views.add(pnlResumenMR(state));
    views.add(pnlMR(state));

    return views;
  }

  header(BuildContext context, DetailTrenState state) {
    final settings = BlocProvider.of<GlobalSettingBloc>(context);

    final primaryText = !settings.state.isDark
        ? Theme.of(context).textTheme
        : Theme.of(context).primaryTextTheme;

    final tabs = [const Tab(child: Text("General"))];
    tabs.add(const Tab(child: Text("Resumen MR")));
    tabs.add(const Tab(child: Text("Detalle MR")));

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Tren ${trenPoint.nroTren}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          TabBar(
              labelColor: primaryText.bodyText1?.color,
              unselectedLabelColor: primaryText.bodyText1?.color,
              tabs: tabs),
        ],
      ),
    );
  }

  pnlGeneral(DetailTrenState state) {
    return ListView(
      children: [
        ListTile(
          dense: true,
          title: const Text("Servicio"),
          subtitle: Text(state.servicio),
        ),
        ListTile(
          dense: true,
          title: const Text("Evento Actual"),
          subtitle: Text(trenPoint.eventoActual),
        ),
        ListTile(
          dense: true,
          title: const Text("Velocidad"),
          subtitle: Text(trenPoint.velocidad.toString()),
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
          title: const Text("Proyección Llegada"),
          subtitle: Text(trenPoint.hrLlegada),
        ),
      ],
    );
  }

  pnlMR(DetailTrenState state) {
    if (state is DetailTrenLoaded) {
      return state.materialRodantes.isNotEmpty
          ? Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 30.0, right: 30.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Buscar',
                        prefixIcon: const Icon(Icons.search),
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.clear))),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: ((context, index) {
                        final TrenMr mr = state.materialRodantes[index];

                        if (mr.tipomr == 'L') {
                          return tileLoco(context, mr);
                        } else {
                          return tileCarro(context, mr);
                        }
                      }),
                      separatorBuilder: (_, index) => const Divider(
                            height: 2,
                          ),
                      itemCount: state.materialRodantes.length),
                ),
              ],
            )
          : const Center(
              child: Text('No se encontró detalle'),
            );
    }

    if (state is DetailTrenError) {
      return Center(
        child: Text('ERROR: ${state.message}'),
      );
    }

    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  tileLoco(BuildContext context, TrenMr mr) {
    return ListTile(
      title: Text(mr.numero),
      subtitle: Text(mr.activarmr),
      trailing: Text(mr.modelomr),
      leading: Tooltip(
        message: 'Locomotora',
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            mr.tipomr,
            style: Theme.of(context).primaryTextTheme.bodyLarge,
          ),
        ),
      ),
      dense: true,
    );
  }

  tileCarro(BuildContext context, TrenMr mr) {
    return ListTile(
      title: Text(mr.numero),
      subtitle: Text("${mr.ssgmr} ${mr.vacio == 1 ? "CV" : "CC"}"),
      trailing: Text(mr.modelomr),
      leading: Tooltip(
        message: 'Carro',
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            mr.tipomr,
            style: Theme.of(context).primaryTextTheme.bodyLarge,
          ),
        ),
      ),
      dense: true,
    );
  }

  pnlResumenMR(DetailTrenState state) {
    if (state is DetailTrenLoaded) {
      return ListView(
        children: [
          ListTile(
            title: const Text("Material Rodante"),
            subtitle: Text(
                """${state.materialRodantes.length} [Pzas]   Cant. Locos: ${state.cantLocos}   Cant. Carros: ${state.cantCarros}"""),
            dense: true,
          ),
          ListTile(
            title: const Text("Resumen Servicio"),
            subtitle: Text(
                """${state.servicio}   CC: ${state.cantCC}   CV: ${state.cantCV}"""),
            dense: true,
          ),
          ListTile(
            title: Text("Arrastre: ${state.arrastre}"),
            dense: true,
          ),
          ListTile(
            title: Text("Largo: ${state.largoTren}"),
            dense: true,
          ),
          ListTile(
            title: Text(
                "Tripulación ${state.tripulaciones.isNotEmpty ? state.tripulaciones[0].nroTripulacion : ''}"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: state.tripulaciones
                  .map((e) => Text("${e.nomOper} (${e.horaToma})"))
                  .toList(),
            ),
            dense: true,
          ),
          const Divider(),
          ListTile(
            title: DataTable(
              columns: const <DataColumn>[
                DataColumn(
                  label: Text(
                    'Tipo Carro',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'CV',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'CC',
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Total',
                  ),
                ),
              ],
              rows: state.tipoCarrosContador
                  .map(
                    (e) => DataRow(
                      cells: <DataCell>[
                        DataCell(Text(e['tipo'].toString())),
                        DataCell(Text(e['CV'].toString())),
                        DataCell(Text(e['CC'].toString())),
                        DataCell(Text(e['total'].toString())),
                      ],
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      );
    }

    if (state is DetailTrenError) {
      return Center(
        child: Text('ERROR: ${state.message}'),
      );
    }

    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
