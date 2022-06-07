import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/base_screen.dart';

void showMyDialog({required BuildContext context, required Widget child}){
  final provider = BlocProvider.of<GlobalSettingBloc>(context);

  showDialog( 
    context: context,
    barrierColor: provider.state.isDark? Colors.black54 : Colors.white38,
    builder: (_) => BaseScreen(child: child)
  );

}