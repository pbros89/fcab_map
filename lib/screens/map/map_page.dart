import 'package:fcab_map/screens/base_screen.dart';
import 'package:fcab_map/widgets/map/app_bar_map.dart';
import 'package:fcab_map/widgets/loading_dialog.dart';
import 'package:fcab_map/widgets/menu/drawer_menu.dart';
import 'package:fcab_map/widgets/map/map_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/map/map_bloc.dart';
import '../../widgets/map/drawer_filter.dart';
import '../../widgets/map/footer_map.dart';

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
      body: BlocBuilder<MapBloc, MapState>(builder: (context, state) {
        return Stack(children: [
          MapWidget(
            mapState: state,
          ),
          AppBarMap(scaffoldState: scaffoldState),
          Positioned(
              bottom: 0.0,
              child: FooterMap(
                mapState: state,
              )),
          if (state is MapLoadingState)
            const LoadingDialog()
        ]);
      }),
    ));
  }
}
