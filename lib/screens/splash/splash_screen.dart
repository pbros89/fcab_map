import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/global_setting/global_setting_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GlobalSettingBloc>(context).add(InitEvent());
    return BlocListener<GlobalSettingBloc, GlobalSettingState>(
      listener: (context, state) {
        if(state is GlobalSettingInitial){
          if(state.usuario != null) {
            context.router.replaceNamed('/map');
          }else{
            context.router.replaceNamed('/auth/login');
          }
        }
      },
      child: Stack(
        children: [
          Container(
            color: Colors.blueGrey[900],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeIn(child: Image.asset('assets/img/logo_transparente.png')),
                const SizedBox(
                  height: 50,
                ),
                const CircularProgressIndicator()
              ],
            ),
          )
        ],
      ),
    );
  }
}
