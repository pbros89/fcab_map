import 'package:badges/badges.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/widgets/glass_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FooterMap extends StatelessWidget {
  const FooterMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
      builder: (context, state) {
        return GlassContainer(
            height: 50,
            padding: 0,
            width: MediaQuery.of(context).size.width,
            borderRadius: 1,
            color: state.isDark ? Colors.black : Colors.white,
            border: 0,
            child: Center(
              child: ListView(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  chipFilter(
                    context,
                    "Trenes",
                    "20",
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  chipFilter(context, "Estaciones", "30"),
                  const SizedBox(
                    width: 20,
                  ),
                  chipFilter(context, "Terminales", "30"),
                  const SizedBox(
                    width: 20,
                  ),
                  chipFilter(context, "Vías Libres", "10"),
                  const SizedBox(
                    width: 20,
                  ),
                  chipFilter(context, "Vías Cedidas", "10",
                      colorBadge: Colors.blue),
                  const SizedBox(
                    width: 20,
                  ),
                  chipFilter(context, "Precauciones", "10",
                      colorBadge: Colors.green),
                  const SizedBox(
                    width: 20,
                  ),
                  chipFilter(context, "Detectores", "10",
                      colorBadge: Colors.red),
                ],
              ),
            ));
      },
    );
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
          onPressed: () {},
        ));
  }
}
