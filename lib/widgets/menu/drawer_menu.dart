import 'package:auto_route/auto_route.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/widgets/glass_container.dart';
import 'package:fcab_map/widgets/menu/user_account_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
        builder: (context, state) {
          return GlassContainer(
            borderRadius: 1,
            border: 0,
            color: state.isDark ? Colors.black : Colors.white,
            child: ListView(
              children: [
                const UserAccountHeader(),
                ListTile(
                  hoverColor: Colors.white.withOpacity(0.3),
                  leading: const Icon(Icons.person),
                  title: const Text(
                    "Administración Usuarios",
                  ),
                  onTap: () => context.router.pushNamed('/map'),
                ),
                ListTile(
                  hoverColor: Colors.white.withOpacity(0.3),
                  leading: const Icon(Icons.map),
                  title: const Text(
                    "Mapa FCAB",
                  ),
                  onTap: () => context.router.pushNamed('/map'),
                ),
                ListTile(
                  hoverColor: Colors.white.withOpacity(0.3),
                  leading: const Icon(Icons.settings),
                  title: const Text(
                    "Configuraciones",
                  ),
                  onTap: () => context.router.pushNamed('/setting'),
                ),
                ListTile(
                  hoverColor: Colors.red.withOpacity(0.3),
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text(
                    "Salir",
                  ),
                  onTap: () {},
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
