import 'package:fcab_map/bloc/filter_map/filter_map_bloc.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/router/custom_router.dart';
import 'package:fcab_map/utils/MyCustomScrollBehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/simple_bloc_observer.dart';
import 'bloc/map/map_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(MyApp());
    },
    blocObserver: SimpleBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GlobalSettingBloc()..add(InitEvent())),
        BlocProvider(create: (_) => MapBloc()),
        BlocProvider(create: (_) => FilterMapBloc()..add(FilterMapInitEvent())),
      ],
      child: BlocBuilder<GlobalSettingBloc, GlobalSettingState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            scrollBehavior: MyCustomScrollBehavior(),
            theme: getTheme(state),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }

  getTheme(GlobalSettingState state) {
    if (state.isLoaded && state.isDark) {
      return ThemeData.dark();
    }

    return ThemeData.light();
  }
}
