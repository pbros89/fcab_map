import 'package:fcab_map/bloc/filter_map/filter_map_bloc.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/bloc/map/map_bloc.dart';
import 'package:fcab_map/utils/geo_utils.dart';
import 'package:fcab_map/widgets/glass_container.dart';
import 'package:fcab_map/widgets/my_combo_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerFilter extends StatelessWidget {
  const DrawerFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
          builder: (context, state) {
            return GlassContainer(
              color: state.isDark ? Colors.black : Colors.white,
              borderRadius: 1,
              border: 0,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                child: BlocBuilder<FilterMapBloc, FilterMapState>(
                    builder: (context, state) {
                  if (state is FilterMapLoaded || state is FilterMapInitial) {
                    return Column(
                      children: [
                        barButton(context, state),
                        header(context, "Filtros Generales"),
                        const Divider(),
                        checkTrenes(context, state),
                        checkEstaciones(context, state),
                        checkTerminales(context, state),
                        //checkRamales(context, state),
                        checkDetectores(context, state),
                        checkViasCedidas(context, state),
                        const Divider(),
                        header(context, "Filtros Avanzados"),
                        const Divider(),
                        cmbRamales(context, state),
                        cmbTrenes(context, state),
                        checkPrecaucion(context, state),
                        checkViasLibres(context, state),
                      ],
                    );
                  }

                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
              ),
            );
          },
        ));
  }

  barButton(BuildContext context, FilterMapState state) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
              height: 50,
              child: OutlinedButton(
                child: const Icon(Icons.search),
                onPressed: () => _loadMapFilter(context, state),
              )),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
              height: 50,
              child: OutlinedButton(
                child: const Icon(Icons.cleaning_services_rounded),
                onPressed: () => _resetFilter(context, state),
              )),
        ),
      ],
    );
  }

  header(BuildContext context, String text) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline6,
          ),
        )
      ],
    );
  }

  checkPrecaucion(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(
            value: state.showPrecauciones,
            onChanged: (newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: newValue,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres));
              }
            }),
        const Text(
          'Precauciones',
        )
      ],
    );
  }

  checkEstaciones(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(
            value: state.showEstaciones,
            onChanged: (newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: newValue,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres));
              }
            }),
        const Text(
          'Estaciones',
        )
      ],
    );
  }

  checkTrenes(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(
            value: state.showTrenes,
            onChanged: (newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: newValue,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres));
              }
            }),
        const Text(
          'Trenes',
        )
      ],
    );
  }

  checkDetectores(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(
            value: state.showDetectoresDesrielo,
            onChanged: (newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: newValue,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres));
              }
            }),
        const Text(
          'Detectores Desrielo',
        )
      ],
    );
  }

  checkTerminales(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(
            value: state.showTerminales,
            onChanged: (newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: newValue,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres));
              }
            }),
        const Text(
          'Terminales',
        )
      ],
    );
  }

  checkViasLibres(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(
            value: state.showViasLibres,
            onChanged: (newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: newValue));
              }
            }),
        const Text(
          'Vias Libres',
        )
      ],
    );
  }

  checkViasCedidas(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(
            value: state.showViasCedidas,
            onChanged: (newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: newValue,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres));
              }
            }),
        const Text(
          'Vias Cedidas',
        )
      ],
    );
  }

  cmbTrenes(BuildContext context, FilterMapState state) {
    return MyComboBox<String>(
        value: 'Todos',
        listValue: const ['Todos', '202', '2404'],
        name: 'Trenes',
        onChanged: (value) {
          print(value);
        });
  }

  cmbRamales(BuildContext context, FilterMapState state) {
    final ramales = ['Todos']..addAll(ramalesMock);
    return MyComboBox<String>(
        value: 'Todos',
        listValue: ramales,
        name: 'Ramales',
        onChanged: (value) {
          print(value);
        });
  }

  _loadMapFilter(BuildContext context, FilterMapState state) {
    final mapBloc = BlocProvider.of<MapBloc>(context);
    mapBloc.add(MapLoadEvent(
      showEstaciones: state.showEstaciones,
      showTrenes: state.showTrenes,
      showPrecauciones: state.showPrecauciones,
      showTerminales: state.showTerminales,
      showViasCedidas: state.showViasCedidas,
      showViasLibres: state.showViasLibres,
      showDetectoresDesrielo: state.showDetectoresDesrielo,
    ));

    Navigator.pop(context);
  }

  _resetFilter(BuildContext context, FilterMapState state) {
    final filterMap = BlocProvider.of<FilterMapBloc>(context);
    filterMap.add(FilterMapInitEvent());
    _loadMapFilter(context, state);
  }
}
