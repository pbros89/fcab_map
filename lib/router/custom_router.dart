import 'package:auto_route/auto_route.dart';
import 'package:fcab_map/screens/admin_users/admin_users_page.dart';
import 'package:fcab_map/screens/auth/change_password/change_password_page.dart';
import 'package:fcab_map/screens/auth/email_validate/email_validate_page.dart';
import 'package:fcab_map/screens/map/map_page.dart';
import 'package:fcab_map/screens/setting/setting_page.dart';
import 'package:fcab_map/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../screens/auth/login/login_page.dart';

part 'custom_router.gr.dart';

@MaterialAutoRouter(
    replaceInRouteName: 'Page, Route, Screen',
    routes: <AutoRoute>[
      AutoRoute(page: SplashPage, initial: true, path: '/splash'),
      AutoRoute(page: EmailValidatePage,  path: '/email_validate'),
      AutoRoute(page: LoginPage, path: '/auth/login'),
      AutoRoute(page: ChangePasswordPage, path: '/auth/change_password'),
      AutoRoute(page: AdminUsersPage, path: '/admin_user'),
      AutoRoute(page: MapPage, path: '/map'),
      AutoRoute(page: SettingPage, path: '/setting')
    ])

//extends the generated private router
class AppRouter extends _$AppRouter {}
