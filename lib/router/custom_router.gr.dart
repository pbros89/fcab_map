// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'custom_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashPage());
    },
    EmailValidatePageRoute.name: (routeData) {
      final args = routeData.argsAs<EmailValidatePageRouteArgs>(
          orElse: () => const EmailValidatePageRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: EmailValidatePage(key: args.key));
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: LoginPage(key: args.key));
    },
    ChangePasswordPageRoute.name: (routeData) {
      final args = routeData.argsAs<ChangePasswordPageRouteArgs>(
          orElse: () => const ChangePasswordPageRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: ChangePasswordPage(key: args.key));
    },
    AdminUsersPageRoute.name: (routeData) {
      final args = routeData.argsAs<AdminUsersPageRouteArgs>(
          orElse: () => const AdminUsersPageRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: AdminUsersPage(key: args.key));
    },
    MapPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MapPage());
    },
    SettingPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SettingPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/splash', fullMatch: true),
        RouteConfig(SplashPageRoute.name, path: '/splash'),
        RouteConfig(EmailValidatePageRoute.name, path: '/email_validate'),
        RouteConfig(LoginPageRoute.name, path: '/auth/login'),
        RouteConfig(ChangePasswordPageRoute.name,
            path: '/auth/change_password'),
        RouteConfig(AdminUsersPageRoute.name, path: '/admin_user'),
        RouteConfig(MapPageRoute.name, path: '/map'),
        RouteConfig(SettingPageRoute.name, path: '/setting')
      ];
}

/// generated route for
/// [SplashPage]
class SplashPageRoute extends PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/splash');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [EmailValidatePage]
class EmailValidatePageRoute extends PageRouteInfo<EmailValidatePageRouteArgs> {
  EmailValidatePageRoute({Key? key})
      : super(EmailValidatePageRoute.name,
            path: '/email_validate',
            args: EmailValidatePageRouteArgs(key: key));

  static const String name = 'EmailValidatePageRoute';
}

class EmailValidatePageRouteArgs {
  const EmailValidatePageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EmailValidatePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LoginPage]
class LoginPageRoute extends PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({Key? key})
      : super(LoginPageRoute.name,
            path: '/auth/login', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ChangePasswordPage]
class ChangePasswordPageRoute
    extends PageRouteInfo<ChangePasswordPageRouteArgs> {
  ChangePasswordPageRoute({Key? key})
      : super(ChangePasswordPageRoute.name,
            path: '/auth/change_password',
            args: ChangePasswordPageRouteArgs(key: key));

  static const String name = 'ChangePasswordPageRoute';
}

class ChangePasswordPageRouteArgs {
  const ChangePasswordPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ChangePasswordPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [AdminUsersPage]
class AdminUsersPageRoute extends PageRouteInfo<AdminUsersPageRouteArgs> {
  AdminUsersPageRoute({Key? key})
      : super(AdminUsersPageRoute.name,
            path: '/admin_user', args: AdminUsersPageRouteArgs(key: key));

  static const String name = 'AdminUsersPageRoute';
}

class AdminUsersPageRouteArgs {
  const AdminUsersPageRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AdminUsersPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [MapPage]
class MapPageRoute extends PageRouteInfo<void> {
  const MapPageRoute() : super(MapPageRoute.name, path: '/map');

  static const String name = 'MapPageRoute';
}

/// generated route for
/// [SettingPage]
class SettingPageRoute extends PageRouteInfo<void> {
  const SettingPageRoute() : super(SettingPageRoute.name, path: '/setting');

  static const String name = 'SettingPageRoute';
}
