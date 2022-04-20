import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccebilityMenu extends StatelessWidget {
  const AccebilityMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
        buildWhen: (previous, current) => current is GlobalSettingLoaded,
        builder: (context, state) {
          final settingBloc = BlocProvider.of<GlobalSettingBloc>(context);
          if (state is GlobalSettingLoaded) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: state.isDark == false
                        ? const Icon(
                            Icons.sunny,
                            color: Colors.amber,
                          )
                        : const Icon(
                            Icons.nightlight_outlined,
                            color: Colors.white,
                          ),
                    onPressed: () {
                      settingBloc.add(const SetThemeEvent());
                    }),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    IconButton(
                        iconSize: 10,
                        icon: const Text(
                          "A-",
                          textScaleFactor: 1.2,
                        ),
                        onPressed: () {
                          settingBloc.add(const MinusScaleTextEvent());
                          MediaQuery.of(context)
                              .copyWith(textScaleFactor: state.scaleText);
                        }),
                    Text((state.scaleText * 100).toDouble().round().toString() +
                        '%'),
                    IconButton(
                        iconSize: 10,
                        icon: const Text(
                          "A+",
                          textScaleFactor: 1.2,
                        ),
                        onPressed: () {
                          settingBloc.add(const PlusScaleTextEvent());
                          MediaQuery.of(context)
                              .copyWith(textScaleFactor: state.scaleText);
                        })
                  ],
                ),
              ],
            );
          }
          return const SizedBox();
        });
  }
}
