import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/models/tren_mr.dart';
import 'package:fcab_map/models/tren_point.dart';
import 'package:fcab_map/models/tren_tripulacion.dart';
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
            length: state.sections,
            child: Center(
              child: SizedBox(
                width: 400,
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
    final List<Widget> views = [pnlGeneral()];
    if (state.materialRodantes.isNotEmpty) views.add(pnlMR(state));
    if (state.tripulaciones.isNotEmpty) views.add(pnlTripulacion(state));

    return views;
  }

  header(BuildContext context, DetailTrenState state) {
    final settings = BlocProvider.of<GlobalSettingBloc>(context);

    final primaryText = !settings.state.isDark
        ? Theme.of(context).textTheme
        : Theme.of(context).primaryTextTheme;

    final tabs = [const Tab(child: Text("General"))];

    if (state.materialRodantes.isNotEmpty) {
      tabs.add(const Tab(child: Text("MR")));
    }

    if (state.tripulaciones.isNotEmpty) {
      tabs.add(const Tab(child: Text("Tripulación")));
    }

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Tren ' + trenPoint.nroTren.toString(),
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

  pnlGeneral() {
    return ListView(
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
          title: const Text("Proyección Llegada"),
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
    );
  }

  pnlMR(DetailTrenState state) {
    if (state is DetailTrenLoaded) {
      return state.materialRodantes.isNotEmpty
          ? ListView.separated(
              itemBuilder: ((context, index) {
                final TrenMr mr = state.materialRodantes[index];

                if (mr.tipomr == 'L')
                  return tileLoco(context, mr);
                else
                  return tileCarro(context, mr);
              }),
              separatorBuilder: (_, index) => const Divider(
                    height: 2,
                  ),
              itemCount: state.materialRodantes.length)
          : const Center(
              child: Text('No se encontraron locomotoras'),
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
      subtitle: Text(mr.ssxamr),
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

  pnlTripulacion(DetailTrenState state) {
    if (state is DetailTrenLoaded) {
      return state.tripulaciones.isNotEmpty
          ? ListView.separated(
              itemBuilder: ((context, index) {
                final TrenTripulacion tripulacion = state.tripulaciones[index];

                return ListTile(
                  title: Text(tripulacion.nomOper),
                  subtitle: Text(tripulacion.codrut),
                  trailing: Tooltip(
                    child: Text(tripulacion.horaToma),
                    message: 'Hora que toma el tren',),
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      tripulacion.tipoOperador,
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    ),
                  ),
                  dense: true,
                );
              }),
              separatorBuilder: (_, index) => const Divider(
                    height: 2,
                  ),
              itemCount: state.tripulaciones.length)
          : const Center(
              child: Text('No se encontraron locomotoras'),
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
