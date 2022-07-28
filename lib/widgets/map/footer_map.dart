import 'package:badges/badges.dart';
import 'package:fcab_map/bloc/filter_map/filter_map_bloc.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/bloc/map/map_bloc.dart';
import 'package:fcab_map/utils/dialog_utils.dart';
import 'package:fcab_map/widgets/glass_container.dart';
import 'package:fcab_map/widgets/map/chip_detector_desrielo.dart';
import 'package:fcab_map/widgets/map/chip_precauciones.dart';
import 'package:fcab_map/widgets/map/chip_terminal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'chip_estaciones.dart';
import 'chip_trenes.dart';
import 'chip_via_cedida.dart';
import 'chip_via_libre.dart';

class FooterMap extends StatelessWidget {
  final MapState mapState;
  const FooterMap({
    Key? key,
    required this.mapState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
      builder: (context, state) {
        final filterBloc = BlocProvider.of<FilterMapBloc>(context);
        return GlassContainer(
            height: 70,
            width: MediaQuery.of(context).size.width,
            borderRadius: 1,
            padding: 10,
            color: state.isDark ? Colors.black : Colors.white,
            border: 0,
            child: Center(
              child: mapState is MapLoadedState
                  ? ListView(
                      physics: const ClampingScrollPhysics(),
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, right: 20),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: generateChips(context, filterBloc.state))
                  : const SizedBox(),
            ));
      },
    );
  }

  generateChips(BuildContext context, FilterMapState filterMapState) {
    List<Widget> chips = [];
    if (filterMapState.showTrenes) {
      chips.add(ChipTrenes(
        trenes: mapState.trenes,
      ));
      chips.add(const SizedBox(width: 10));
    }
    if (filterMapState.showEstaciones) {
      chips.add(ChipEstaciones(estaciones: mapState.estaciones));
      chips.add(const SizedBox(width: 10));
    }

    if (filterMapState.showTerminales) {
      chips.add(ChipTerminales(terminales: mapState.terminales,));
      chips.add(const SizedBox(width: 10));
    }

    if (filterMapState.showViasCedidas) {
      chips.add(ChipViaCedida(
        vias: mapState.viasCedidas,
      ));
      chips.add(const SizedBox(width: 10));
    }

    if (filterMapState.showViasLibres) {
      chips.add(ChipViaLibre(vias: mapState.viasLibres,));
      chips.add(const SizedBox(
        width: 10,
      ));
    }

    if (filterMapState.showPrecauciones) {
      chips.add(ChipPrecauciones(precauciones: mapState.precauciones,));
      chips.add(const SizedBox(
        width: 10,
      ));
    }
    if (filterMapState.showDetectoresDesrielo) {
      chips.add(ChipDetectorDesrielo(detectoresDesrielo: mapState.detectoresDesrielo,));
      chips.add(const SizedBox(
        width: 10,
      ));
    }

    return chips;
  }

  chipFilter(BuildContext context, String name, String cantity,
      {Color colorBadge = Colors.red, Color? colorChip}) {
    final textTheme = Theme.of(context)
        .textTheme
        .caption
        ?.copyWith(fontWeight: FontWeight.bold);
    return Badge(
        badgeColor: colorBadge,
        badgeContent: Text(cantity, style: textTheme),
        child: MaterialButton(
          child: Text(
            name,
            style: textTheme,
          ),
          onPressed: () {
            showMyDialog(
                context: context,
                child: Center(
                  child: SizedBox(
                    width: 400,
                    height: 400,
                    child: Card(
                        child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          color: Theme.of(context).scaffoldBackgroundColor,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Text(
                            name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ],
                    )),
                  ),
                ));
          },
        ));
  }
}
