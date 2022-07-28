import 'package:fcab_map/bloc/auth/change_password/change_password_bloc.dart';
import 'package:fcab_map/bloc/auth/clave_secret/clave_secret_bloc.dart';
import 'package:fcab_map/bloc/auth/login/login_bloc.dart';
import 'package:fcab_map/bloc/chip_estacion/chip_estacion_bloc.dart';
import 'package:fcab_map/bloc/chip_terminal/chip_terminal_bloc.dart';
import 'package:fcab_map/bloc/chip_tren/chip_tren_bloc.dart';
import 'package:fcab_map/bloc/chip_via_cedida/chip_via_cedida_bloc.dart';
import 'package:fcab_map/bloc/detail_estacion/detail_estacion_bloc.dart';
import 'package:fcab_map/bloc/detail_tren/detail_tren_bloc.dart';
import 'package:fcab_map/bloc/filter_map/filter_map_bloc.dart';
import 'package:fcab_map/bloc/global_setting/global_setting_bloc.dart';
import 'package:fcab_map/bloc/map/map_bloc.dart';
import 'package:fcab_map/router/custom_router.dart';
import 'package:fcab_map/utils/MyCustomScrollBehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'bloc/chip_detector_desrielo/chip_detector_desrielo_bloc.dart';
import 'bloc/chip_precauciones/chip_precauciones_bloc.dart';
import 'bloc/chip_via_libre/chip_via_libre_bloc.dart';
import 'bloc/detail_terminal/detail_terminal_bloc.dart';
import 'bloc/detail_via_libre/detail_via_libre_bloc.dart';
import 'bloc/simple_bloc_observer.dart';
import 'bloc/user/admin_user/admin_user_bloc.dart';

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
        BlocProvider(create: (_) => LoginBloc()),
        BlocProvider(create: (_) => ClaveSecretBloc()),
        BlocProvider(create: (_) => ChangePasswordBloc()),
        BlocProvider(create: (_) => GlobalSettingBloc()),
        BlocProvider(
            create: (_) =>
                DetailEstacionBloc()..add(DetailEstacionInitEvent())),
        BlocProvider(create: (_) => MapBloc()..add(const MapInitEvent())),
        BlocProvider(create: (_) => FilterMapBloc()..add(FilterMapInitEvent())),
        BlocProvider(create: (_) => ChipEstacionBloc()),
        BlocProvider(create: (_) => ChipViaCedidaBloc()),
        BlocProvider(create: (_) => ChipTrenBloc()),
        BlocProvider(create: (_) => ChipTerminalBloc()),
        BlocProvider(create: (_) => ChipViaLibreBloc()),
         BlocProvider(create: (_) => ChipPrecaucionesBloc()),
        BlocProvider(create: (_) => ChipDetectorDesrieloBloc()),
        BlocProvider(
            create: (_) => DetailTrenBloc()..add(DetailTrenInitEvent())),
        BlocProvider(
            create: (_) =>
                DetailTerminalBloc()..add(DetailTerminalInitEvent())),
        BlocProvider(
            create: (_) => DetailViaLibreBloc()..add(DetailViaLibreInitEvent())),
        BlocProvider(create: (_) => AdminUserBloc()..add(InitAdminUserEvent()))
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
            supportedLocales: const [
              Locale('es', 'ES'),
              Locale('en', 'US'),
            ],
            localeResolutionCallback: (deviceLocale, supportedLocales) {
              for (var locale in supportedLocales) {
                if (locale.languageCode == deviceLocale!.languageCode &&
                    locale.countryCode == deviceLocale.countryCode) {
                  return deviceLocale;
                }
              }
              return supportedLocales.first;
            },
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }

  getTheme(GlobalSettingState state) {
    if (state.isLoaded && state.isDark) {
      return ThemeData.dark().copyWith(useMaterial3: true,);
    }

    return ThemeData.light().copyWith(useMaterial3: true,);
    ;
  }
}
