import 'package:fcab_map/bloc/filter_map/filter_map_bloc.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/bloc/map/map_bloc.dart';
import 'package:fcab_map/constants/tipos_precauciones_mock.dart';
import 'package:fcab_map/widgets/glass_container.dart';
import 'package:fcab_map/widgets/my_combo_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/ramales_mock.dart';

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
                        const Divider(),
                        header(context, "Temporarizador"),
                        barTiming(context, state),
                        const Divider(),
                        header(context, "Tipos de Vistas"),
                        barView(context, state),
                        const Divider(),
                        header(context, "Filtros Generales"),
                        checkTrenes(context, state),
                        checkEstaciones(context, state),
                        checkTerminales(context, state),
                        checkViasCedidas(context, state),
                        checkViasLibres(context, state),
                        checkPrecaucion(context, state),
                        checkDetectores(context, state),
                        const Divider(),
                        header(context, "Filtros Avanzados"),
                        cmbRamales(context, state),
                        cmbTiposPrecauciones(context, state),
                        
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

  barView(BuildContext context, FilterMapState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Tooltip(
          message: 'Vista Plana',
          child: OutlinedButton(
            style: state.typeView == 'PLANA' ? OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              primary: Colors.white
            ) : null,
            onPressed: ()  => BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres, 
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: 'PLANA')),
            child: const Text('Plana')
              
          ),
        ),
        Tooltip(
          message: 'Vista Satelite',
          child: OutlinedButton(
            style: state.typeView == 'SATELITE' ? OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              primary: Colors.white
            ) : null,
            onPressed: () => BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres, 
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: 'SATELITE')),
            child: const Text('Satelite')
          ),
        ),
      ],
    );
  }


  barTiming(BuildContext context, FilterMapState state) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Tooltip(
          message: '1 minuto',
          child: OutlinedButton(
            style: state.timingRefresh == 1 ? OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              primary: Colors.white
            ) : null,
            onPressed: () => BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres, 
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: 1,
                        typeView: state.typeView)),
            child: const Text('1'),
          ),
        ),
        Tooltip(
          message: '3 minutos',
          child: OutlinedButton(
            style: state.timingRefresh == 3 ? OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              primary: Colors.white
            ) : null,
            onPressed: () => BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres, 
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: 3,
                        typeView: state.typeView)),
            child: const Text('3'),
          ),
        ),
        Tooltip(
          message: '5 minutos',
          child: OutlinedButton(
            style: state.timingRefresh == 5 ? OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              primary: Colors.white
            ) : null,
            onPressed: () => BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres, 
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: 5,
                        typeView: state.typeView)),
            child: const Text('5'),
          ),
        ),
      ],
    );
  }

  barButton(BuildContext context, FilterMapState state) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: Tooltip(
            message: 'Buscar',
            child: SizedBox(
                height: 50,
                child: OutlinedButton(
                  child: const Icon(Icons.search),
                  onPressed: () => _loadMapFilter(context, state),
                )),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Tooltip(
            message: 'Limpiar Filtros',
            child: SizedBox(
                height: 50,
                child: OutlinedButton(
                  child: const Icon(Icons.cleaning_services_rounded),
                  onPressed: () => _resetFilter(context, state),
                )),
          ),
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
                        showViasLibres: state.showViasLibres, 
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
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
                        showViasLibres: state.showViasLibres,
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
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
                        showViasLibres: state.showViasLibres,
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
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
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: newValue,
                        showViasLibres: state.showViasLibres,
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
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
                        showViasLibres: state.showViasLibres,
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
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
                        showViasLibres: newValue,
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
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
                        showViasLibres: state.showViasLibres,
                        codRamal: state.codRamal,
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
              }
            }),
        const Text(
          'Vias Cedidas',
        )
      ],
    );
  }

  cmbTiposPrecauciones(BuildContext context, FilterMapState state) {
    //final tiposPrecauciones = ['TODOS']..addAll(tiposPrecacionesMock);
    return MyComboBox<String>(
        value: state.tipoPrecaucion,
        listValue: tiposPrecacionesMock,
        name: 'Tipo Precaución',
        onChanged: (value) {
          BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres,
                        codRamal: state.codRamal,
                        tipoPrecaucion: value ?? 'ADMINISTRATIVA',
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
        });
  }

  cmbRamales(BuildContext context, FilterMapState state) {
    final ramales = ['TODOS']..addAll(ramalesMock);
    return MyComboBox<String>(
        value: state.codRamal,
        listValue: ramales,
        name: 'Ramal',
        onChanged: (value) {
          BlocProvider.of<FilterMapBloc>(context).add(
                    FilterMapChangeEvent(
                        showPrecauciones: state.showPrecauciones,
                        showTerminales: state.showTerminales,
                        showEstaciones: state.showEstaciones,
                        showTrenes: state.showTrenes,
                        showViasCedidas: state.showViasCedidas,
                        showDetectoresDesrielo: state.showDetectoresDesrielo,
                        showViasLibres: state.showViasLibres,
                        codRamal: value ?? 'TODOS',
                        tipoPrecaucion: state.tipoPrecaucion,
                        timingRefresh: state.timingRefresh,
                        typeView: state.typeView));
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
      codRamal: state.codRamal,
      tipoPrecaucion: state.tipoPrecaucion,
      timingRefresh: state.timingRefresh,
      typeView: state.typeView
    ));

    Navigator.pop(context);
  }

  _resetFilter(BuildContext context, FilterMapState state) {
    final filterMap = BlocProvider.of<FilterMapBloc>(context);
    filterMap.add(FilterMapInitEvent());
    _loadMapFilter(context, state);
  }
}
