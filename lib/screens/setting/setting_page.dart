import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingBloc = BlocProvider.of<GlobalSettingBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuraciones"),
      ),
      body: BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
        builder: ((context, state) {
          if (state is GlobalSettingLoaded) {
            return Container();
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }

  /*buildList(BuildContext context, GlobalSettingLoaded state) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        ListTile(
          title: const Text("Tema"),
          subtitle: Text(state.theme),
          trailing: inputTheme(settingBloc),
        ),
        ListTile(
          title: const Text("Tamaño de Texto"),
          subtitle: Text(
              "${settingBloc.scaleText.toString()} (valor original es 1.0)"),
          trailing: inputScaleText(context, settingBloc),
        )
      ],
    );
  }

  inputTheme(GlobalSettingBloc settingBloc) {
    return DropdownButton<String>(
      items: listThemes
          .map((e) => DropdownMenuItem<String>(child: Text(e), value: e))
          .toList(),
      onChanged: (value) {
        if (value == null) return;
        settingBloc.add(SetThemeEvent(value));
      },
      value: settingBloc.theme,
    );
  }

  inputScaleText(BuildContext context, GlobalSettingBloc settingBloc) {
    return Slider(
        value: settingBloc.scaleText,
        min: 0.5,
        max: 4,
        onChanged: (value) {
          settingBloc.scaleText = value;
          MediaQueryData data = MediaQuery.of(context);
          data.copyWith(textScaleFactor: value);
        });
  }*/
}
