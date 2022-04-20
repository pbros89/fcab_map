import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/widgets/glass_container.dart';
import 'package:fcab_map/widgets/menu/accesibility_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBarMap extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldState;
  const AppBarMap({Key? key, required this.scaffoldState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
      builder: (context, state) {
        return GlassContainer(
            height: 45,
            borderRadius: 0,
            color: state.isDark ? Colors.black : Colors.white,
            border: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                btnMenu(context),
                pnlAccebility(context),
                btnFilter(context)
              ],
            ));
      },
    );
  }

  btnMenu(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (scaffoldState.currentState?.isDrawerOpen == false) {
            scaffoldState.currentState?.openDrawer();
          } else {
            Navigator.of(context).pop();
          }
        },
        icon: const Icon(Icons.menu));
  }

  pnlAccebility(BuildContext context) {
    return const AccebilityMenu();
  }

  btnFilter(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (scaffoldState.currentState?.isEndDrawerOpen == false) {
            scaffoldState.currentState?.openEndDrawer();
          } else {
            Navigator.of(context).pop();
          }
        },
        icon: const Icon(Icons.filter_alt));
  }
}
