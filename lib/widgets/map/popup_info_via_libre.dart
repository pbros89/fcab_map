import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/models/via_libre_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/detail_via_libre/detail_via_libre_bloc.dart';
import '../../screens/base_screen.dart';

class PopupInfoViaLibre extends StatelessWidget {
  final ViaLibreLine viaLibreLine;
  const PopupInfoViaLibre({Key? key, required this.viaLibreLine}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailViaLibreBloc, DetailViaLibreState>(
      builder: (context, state) {
        return BaseScreen(
          child: DefaultTabController(
            length: 1,
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

  getTabViews(DetailViaLibreState state) {
    final List<Widget> views = [pnlGeneral(state)];

    return views;
  }

  header(BuildContext context, DetailViaLibreState state) {
    final settings = BlocProvider.of<GlobalSettingBloc>(context);

    final primaryText = !settings.state.isDark
        ? Theme.of(context).textTheme
        : Theme.of(context).primaryTextTheme;

    final tabs = [const Tab(child: Text("General"))];

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Vía Libre ${viaLibreLine.nroVl}',
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

  
  pnlGeneral(DetailViaLibreState state) {
    if (state is DetailViaLibreLoaded) {
      return ListView(
        children: [
          ListTile(
            title: const Text("Tren"),
            subtitle: Text(state.detalleViaLibre?.fkNroTren.toString() ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Locomotora"),
            subtitle: Text(state.detalleViaLibre?.nroLoco.toString() ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Origen"),
            subtitle: Text(state.detalleViaLibre?.origenVl ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Destino"),
            subtitle: Text(state.detalleViaLibre?.destinoVl ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Operador"),
            subtitle: Text(state.detalleViaLibre?.operador ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Observación"),
            subtitle: Text(state.detalleViaLibre?.observacion ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Hora VL"),
            subtitle: Text(state.detalleViaLibre?.horaVl ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Hora Solicita"),
            subtitle: Text(state.detalleViaLibre?.hrSolicita ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Hora Confirma"),
            subtitle: Text(state.detalleViaLibre?.hrConfirma ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Hora Salida"),
            subtitle: Text(state.detalleViaLibre?.hrSalidaVl ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Maniobra"),
            subtitle: Text(state.detalleViaLibre?.maniobra ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Orden Disco"),
            subtitle: Text(state.detalleViaLibre?.ordenDisco ?? ''),
            dense: true,
          ),
          ListTile(
            title: const Text("Reintentos"),
            subtitle: Text(state.detalleViaLibre?.reintentos.toString() ?? ''),
            dense: true,
          ),
        ],
      );
    }

    if (state is DetailViaLibreError) {
      return Center(
        child: Text('ERROR: ${state.message}'),
      );
    }

    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
