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
                    changeFilterLoad(context, state);
                    return Column(
                      children: [
                        header(context, "Filtros Generales"),
                        const Divider(),
                        checkTrenes(context, state),
                        checkEstaciones(context, state),
                        checkRamales(context, state),
                        checkDetectores(context, state),
                        const Divider(),
                        header(context, "Filtros Avanzados"),
                        const Divider(),
                        cmbRamales(context, state),
                        cmbTrenes(context, state),
                        checkPrecaucion(context, state),
                        checkViasLibres(context, state),
                        checkViasCedidas(context, state),
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
            onChanged:
                null /*(newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: newValue,
                        showRamales: state.showRamales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes));
              }
            }*/
            ),
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
                print(newValue);
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showRamales: state.showRamales,
                        showEstaciones: newValue,
                        showTrenes: state.showTrenes));
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
                        showRamales: state.showRamales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: newValue));
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
        Checkbox(value: state.showRamales, onChanged: null),
        const Text(
          'Detectores Desrielo',
        )
      ],
    );
  }

  checkRamales(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(
            value: state.showRamales,
            onChanged: (newValue) {
              if (newValue != null) {
                BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showRamales: newValue,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes));
              }
            }),
        const Text(
          'Ramales',
        )
      ],
    );
  }

  checkViasLibres(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(value: state.showEstaciones, onChanged: null),
        const Text(
          'Vias Libres',
        )
      ],
    );
  }

  checkViasCedidas(BuildContext context, FilterMapState state) {
    return Row(
      children: [
        Checkbox(value: state.showEstaciones, onChanged: null),
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

  changeFilterLoad(BuildContext context, FilterMapState state) {
    final mapBloc = BlocProvider.of<MapBloc>(context);
    mapBloc.add(MapLoadDataEvent(
      showEstaciones: state.showEstaciones,
      showTrenes: state.showTrenes,
      showPrecauciones: state.showPrecauciones,
      showRamales: state.showRamales,
    ));
  }
}
