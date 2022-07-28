import 'package:fcab_map/bloc/detail_estacion/detail_estacion_bloc.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/models/contador_carro.dart';
import 'package:fcab_map/models/contador_loco.dart';
import 'package:fcab_map/models/detalle_carro.dart';
import 'package:fcab_map/models/detalle_loco.dart';
import 'package:fcab_map/models/estacion_point.dart';
import 'package:fcab_map/screens/base_screen.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopupInfoEstacion extends StatelessWidget {
  final EstacionPoint estacionPoint;
  const PopupInfoEstacion({Key? key, required this.estacionPoint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return BlocBuilder<DetailEstacionBloc, DetailEstacionState>(
      builder: (context, state) {
        return BaseScreen(
          child: DefaultTabController(
            length: state.sections,
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

  header(BuildContext context, DetailEstacionState state) {
    final settings = BlocProvider.of<GlobalSettingBloc>(context);

    final primaryText = !settings.state.isDark
        ? Theme.of(context).textTheme
        : Theme.of(context).primaryTextTheme;

    final tabs = [const Tab(child: Text("General"))];

    if(state.contadorLoco.isNotEmpty){
      tabs.add(const Tab(child: Text("Locos")));
    }

    if(state.contadorCarro.isNotEmpty){
      tabs.add(const Tab(child: Text("Carros")));
    }

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              'Estación ${estacionPoint.codEstacion}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          TabBar(
            labelColor: primaryText.bodyText1?.color,
            unselectedLabelColor: primaryText.bodyText1?.color,
            tabs: tabs
          ),
        ],
      ),
    );
  }

  getTabViews(DetailEstacionState state) {
    final List<Widget> views = [pnlGeneral(state)];
    if(state.contadorLoco.isNotEmpty ) views.add(pnlLocomotoras(state));
    if(state.contadorCarro.isNotEmpty ) views.add(pnlCarros(state));

    return views;
  }

  pnlGeneral(DetailEstacionState state) {
    return ListView(children: [
      ListTile(
        title: const Text("Ramal"),
        trailing: Text(estacionPoint.codRamal),
        dense: true,
      ),
      const Divider(),
      ListTile(
        title: const Text("KM Inicio"),
        trailing: Text(estacionPoint.kmIni.toString()),
        dense: true,
      ),
      const Divider(),
      ListTile(
        title: const Text("KM Final"),
        trailing: Text(estacionPoint.kmFin.toString()),
        dense: true,
      ),
      const Divider(),
      ListTile(
        title: const Text("Locomotoras"),
        trailing: Text(state.contadorLoco.length.toString()),
        dense: true,
      ),
      const Divider(),
      ListTile(
        title: const Text("Carros"),
        trailing: Text(state.contadorCarro.length.toString()),
        dense: true,
      ),
      const Divider(),
    ]);
  }

  pnlLocomotoras(DetailEstacionState state) {
    if (state is DetailEstacionLoaded) {
      return state.contadorLoco.isNotEmpty
          ? ListView.separated(
              itemBuilder: ((context, index) {
                final ContadorLoco loco = state.contadorLoco[index];
                final color = loco.color == 'AMARILLO'
                    ? Colors.orange
                    : loco.color == 'ROJO'
                        ? Colors.red
                        : null;
                return ListTile(
                  title: Text(loco.linea),
                  subtitle: Text(loco.marMante),
                  trailing: Text("${loco.cant.toString()} Locomotoras"),
                  tileColor: color,
                  dense: true,
                  onTap: () {
                    final provider =
                        BlocProvider.of<DetailEstacionBloc>(context);
                    provider.add(DetailEstacionSelectLocoEvent(
                        contadorLoco: state.contadorLoco,
                        contadorCarro: state.contadorCarro,
                        sections: state.sections,
                        contadorLocoSelect: loco));

                    showMyDialog(
                        context: context,
                        child: popupDetLocomotoras(context, loco));
                  },
                );
              }),
              separatorBuilder: (_, index) => const Divider(
                    height: 2,
                  ),
              itemCount: state.contadorLoco.length)
          : const Center(
              child: Text('No se encontraron locomotoras'),
            );
    }

    if (state is DetailEstacionError) {
      return Center(
        child: Text('ERROR: ${state.message}'),
      );
    }

    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  popupDetLocomotoras(context, ContadorLoco locoSelect) {
    final color = locoSelect.color == 'AMARILLO'
        ? Colors.orange
        : locoSelect.color == 'ROJO'
            ? Colors.red
            : null;

    return Center(
      child: SizedBox(
        height: 450,
        width: 450,
        child: Card(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              color: color,
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                '${locoSelect.estacion} - ${locoSelect.linea} - ${locoSelect.marMante}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            
            Expanded(
              child: BlocBuilder<DetailEstacionBloc, DetailEstacionState>(
                  builder: (context, state) {
                if (state is DetailEstacionLoaded) {
                  return (state.detalleLoco?.length ?? 0) > 0
                      ? ListView.separated(
                          itemBuilder: ((context, index) {
                            final DetalleLoco loco =
                                state.detalleLoco![index];

                            return ListTile(
                              title: Text("Locomotora ${loco.loco}"),
                              subtitle: Text('Observación: ${loco.obsMarca}'),
                              dense: true,
                            );
                          }),
                          separatorBuilder: (_, index) => const Divider(
                                height: 2,
                              ),
                          itemCount: state.detalleLoco?.length ?? 0)
                      : const Center(
                          child: Text('No se encontraron locomotoras'),
                        );
                }

                if (state is DetailEstacionError) {
                  return Center(
                    child: Text('ERROR: ${state.message}'),
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
            ),
          ],
        )),
      ),
    );
  }

  pnlCarros(DetailEstacionState state) {
      if (state is DetailEstacionLoaded) {
        return state.contadorCarro.isNotEmpty
            ? ListView.separated(
                shrinkWrap: false,
                
                itemBuilder: ((context, index) {
                  print(index);
                  final ContadorCarro carro = state.contadorCarro[index];
                  final color = carro.color == 'AMARILLO'
                      ? Colors.orange
                      : carro.color == 'ROJO'
                          ? Colors.red
                          : null;
                  return ListTile(
                    title: Text(carro.tipoCarro),
                    subtitle: Text(
                        '${carro.codServicio} - ${carro.linea} - ${carro.marcaMante} - ${carro.estadoCarga}'),
                    trailing: Text("${carro.cant.toString()} Carros"),
                    tileColor: color,
                    dense: true,
                    onTap: () {
                      final provider =
                          BlocProvider.of<DetailEstacionBloc>(context);
                      provider.add(DetailEstacionSelectCarroEvent(
                          contadorLoco: state.contadorLoco,
                          contadorCarro: state.contadorCarro,
                          sections: state.sections,
                          contadorCarroSelect: carro));

                      showMyDialog(
                          context: context,
                          child: popupDetCarro(context, carro));
                    },
                  );
                }),
                separatorBuilder: (_, index) => const Divider(
                      height: 2,
                    ),
                itemCount: state.contadorCarro.length)
            : const Center(
                child: Text('No se encontraron carros'),
              );
      }

      if (state is DetailEstacionError) {
        return Center(
          child: Text('ERROR: ${state.message}'),
        );
      }

      return const Center(
        child: CircularProgressIndicator(),
      );
    
  }

  popupDetCarro(context, ContadorCarro carroSelect) {
    final color = carroSelect.color == 'AMARILLO'
        ? Colors.orange
        : carroSelect.color == 'ROJO'
            ? Colors.red
            : null;

    return Center(
      child: SizedBox(
        height: 450,
        width: 450,
        child: Card(
            child: Column(
          children: [
            Container(
              width: double.infinity,
              color: color,
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                '${carroSelect.estacion} - ${carroSelect.tipoCarro} - ${carroSelect.linea} - ${carroSelect.marcaMante}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
              child: BlocBuilder<DetailEstacionBloc, DetailEstacionState>(
                  builder: (context, state) {
                if (state is DetailEstacionLoaded) {
                  return (state.detalleCarro?.length ?? 0) > 0
                      ? ListView.separated(
                          itemBuilder: ((context, index) {
                            final DetalleCarro carro =
                                state.detalleCarro![index];

                            return ListTile(
                              title: Text("Carro ${carro.numero}"),
                              subtitle:
                                  Text('Observación: ${carro.obsMante}'),
                              dense: true,
                            );
                          }),
                          separatorBuilder: (_, index) => const Divider(
                                height: 2,
                              ),
                          itemCount: state.detalleCarro?.length ?? 0)
                      : const Center(
                          child: Text('No se encontraron carros'),
                        );
                }

                if (state is DetailEstacionError) {
                  return Center(
                    child: Text('ERROR: ${state.message}'),
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
            ),
          ],
        )),
      ),
    );
  }
}
