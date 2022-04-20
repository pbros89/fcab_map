import 'package:auto_route/auto_route.dart';
import 'package:fcab_map/screens/map/map_page.dart';
import 'package:fcab_map/screens/setting/setting_page.dart';
import 'package:flutter/material.dart';

part 'custom_router.gr.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page, Route, Screen',
    routes: <AutoRoute>[
      AutoRoute(page: MapPage, initial: true, path: '/map'),
      AutoRoute(page: SettingPage, path: '/setting')
    ])

//extends the generated private router
class AppRouter extends _$AppRouter {}
