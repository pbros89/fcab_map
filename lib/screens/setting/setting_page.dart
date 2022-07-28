import 'package:auto_route/auto_route.dart';
import 'package:fcab_map/screens/base_screen.dart';
import 'package:fcab_map/widgets/setting/list_accesibility.dart';
import 'package:fcab_map/widgets/sliver_sub_header.dart';
import 'package:flutter/material.dart';

import '../../widgets/menu/drawer_menu.dart';
import '../../widgets/setting/list_cache.dart';
import '../../widgets/setting/list_permissions.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: const DrawerMenu(),
      body: BaseScreen(
        child: CustomScrollView(
          slivers: [
            header(context),
            const SliverSubHeader(text: 'Accesibilidad',),
            const ListAccesibility(),
            const SliverSubHeader(text: 'Cache',),
            const ListCache(),
            const SliverSubHeader(text: 'Permisos Mapa Operacional',),
            const ListPermissions()
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return const SliverAppBar(
      floating: false,
      pinned: true,
      centerTitle: false,
      title: const Text('Configuraciones'),
    );
  }

}
