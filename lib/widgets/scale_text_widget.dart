import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/global_setting/global_setting_bloc.dart';

class ScaleTextWidget extends StatelessWidget {
  final GlobalSettingState state;
  const ScaleTextWidget({Key? key, required this.state}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingBloc = BlocProvider.of<GlobalSettingBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            iconSize: 10,
            icon: const Text(
              "A-",
              textScaleFactor: 1.2,
            ),
            onPressed: () {
              settingBloc.add(const MinusScaleTextEvent());
              MediaQuery.of(context).copyWith(textScaleFactor: state.scaleText);
            }),
        Text('${(state.scaleText * 100).toDouble().round()}%'),
        IconButton(
            iconSize: 10,
            icon: const Text(
              "A+",
              textScaleFactor: 1.2,
            ),
            onPressed: () {
              settingBloc.add(const PlusScaleTextEvent());
              MediaQuery.of(context).copyWith(textScaleFactor: state.scaleText);
            })
      ],
    );
  }
}
