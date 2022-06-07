import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/models/terminal_acido.dart';
import 'package:fcab_map/models/terminal_point.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/detail_terminal/detail_terminal_bloc.dart';
import '../../screens/base_screen.dart';

class PopupInfoTerminal extends StatelessWidget {
  final TerminalPoint terminalPoint;
  const PopupInfoTerminal({Key? key, required this.terminalPoint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailTerminalBloc, DetailTerminalState>(
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

  getTabViews(DetailTerminalState state) {
    final List<Widget> views = [pnlGeneral()];
    if (state.terminalAcidos.isNotEmpty) views.add(pnlAcido(state));

    return views;
  }

  header(BuildContext context, DetailTerminalState state) {
    final settings = BlocProvider.of<GlobalSettingBloc>(context);

    final primaryText = !settings.state.isDark
        ? Theme.of(context).textTheme
        : Theme.of(context).primaryTextTheme;

    final tabs = [const Tab(child: Text("General"))];

    if (state.terminalAcidos.isNotEmpty) {
      tabs.add(const Tab(child: Text("Nivel Acido (%)")));
    }

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Terminal ' + terminalPoint.codEstacion.toString(),
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
          title: const Text("Terminal"),
          subtitle: Text(terminalPoint.codEstacion.toString()),
        ),
        ListTile(
          dense: true,
          title: const Text("Ramal"),
          subtitle: Text(terminalPoint.codRamal),
        ),
        ListTile(
          dense: true,
          title: const Text("KM Inicio"),
          subtitle: Text(terminalPoint.kmIni.toString()),
        ),
        ListTile(
          dense: true,
          title: const Text("KM Final"),
          subtitle: Text(terminalPoint.kmFin.toString()),
        ),
        
      ],
    );
  }

  pnlAcido(DetailTerminalState state) {
    if (state is DetailTerminalLoaded) {
      return state.terminalAcidos.isNotEmpty
          ? ListView.separated(
              itemBuilder: ((context, index) {
                final TerminalAcido acido = state.terminalAcidos[index];

                return ListTile(
                  title: Text(acido.codEstanque),
                  subtitle: Text('Toneladas: ${acido.tonAcido.toString()}\nFecha Control: ${acido.fechaControl}\nServicio: ${acido.codServicio}'),
                  leading: Tooltip(
                    message: 'Nivel de Acido',
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(
                        acido.nivelAcido.round().toString(),
                        style: Theme.of(context).primaryTextTheme.bodyLarge,
                      ),
                    ),
                  ),
                  dense: true,
                );
              }),
              separatorBuilder: (_, index) => const Divider(
                    height: 2,
                  ),
              itemCount: state.terminalAcidos.length)
          : const Center(
              child: Text('No se encontraron locomotoras'),
            );
    }

    if (state is DetailTerminalError) {
      return Center(
        child: Text('ERROR: ${state.message}'),
      );
    }

    return const Center(
      child: CircularProgressIndicator(),
    );
  }

}
