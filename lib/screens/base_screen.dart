import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animate_do/animate_do.dart';

//Integra el cambio de scala de texto

class BaseScreen extends StatelessWidget {
  final Widget child;
  const BaseScreen({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
      builder: (context, state) {
        MediaQueryData data =
            MediaQuery.of(context).copyWith(textScaleFactor: state.scaleText);

        return MediaQuery(
          data: data, 
        child: FadeIn(
          child: child,
          ));
      },
    );
  }
}
