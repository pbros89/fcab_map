import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/global_setting/global_setting_bloc.dart';
import '../scale_text_widget.dart';

class ListAccesibility extends StatelessWidget {
  const ListAccesibility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalSettingBloc, GlobalSettingState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      buildWhen: (previous, current) =>
          previous != current && current is GlobalSettingLoaded,
      builder: (context, state) {
        List<Widget> items = listItems(context, state);
        return SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return items[index];
          }, childCount: items.length),
        );
      },
    );
  }

  List<Widget> listItems(BuildContext context, GlobalSettingState state) {
    final settingBloc = BlocProvider.of<GlobalSettingBloc>(context);
    return [
      
      ListTile(
        title: const Text("Tema Oscuro"),
        trailing: Switch(
          value: state.isDark,
          onChanged: (bool value) {
            settingBloc.add(const SetThemeEvent());
          },
        ),
      ),
      ListTile(
        title: const Text("Tamaño de Fuente"),
        trailing: SizedBox(
          child: SizedBox(
            width: 200,
            child: ScaleTextWidget(state: state,)
          ),
        ),
      ),
    ];
  }
}