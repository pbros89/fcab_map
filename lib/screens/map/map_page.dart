import 'package:fcab_map/bloc/filter_map/filter_map_bloc.dart';
import 'package:fcab_map/screens/base_screen.dart';
import 'package:fcab_map/widgets/app_bar_map.dart';
import 'package:fcab_map/widgets/drawer_filter.dart';
import 'package:fcab_map/widgets/footer_map.dart';
import 'package:fcab_map/widgets/menu/drawer_menu.dart';
import 'package:fcab_map/widgets/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/map/map_bloc.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaffoldState = GlobalKey<ScaffoldState>();

    return BaseScreen(
      child: Scaffold(
        key: scaffoldState,
        drawer: const DrawerMenu(),
        endDrawer: const DrawerFilter(),
        body: Stack(
          children: [
            BlocBuilder<MapBloc, MapState>(
              builder: (context, state) {
                if (state is MapLoadedState || state is MapInitialState) {
                  return MapWidget(
                    ramales: state.ramales,
                    ramalesData: state.ramalesData,
                    estacionesData: state.estacionesData,
                    precaucionesData: state.precaucionesData,
                    trenesData: state.trenesData,
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            AppBarMap(scaffoldState: scaffoldState),
            const Positioned(bottom: 0.0, child: FooterMap()),
          ],
        ),
      ),
    );
  }
}
