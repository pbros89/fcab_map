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
            path: '/', redirectTo: '/map', fullMatch: true),
        RouteConfig(MapPageRoute.name, path: '/map'),
        RouteConfig(SettingPageRoute.name, path: '/setting')
      ];
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
