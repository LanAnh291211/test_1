// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import 'add_to_do.dart' as _i2;
import 'favorite_page.dart' as _i4;
import 'navigation_page.dart' as _i1;
import 'navigator_home_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    NavigationRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.NavigationPage(),
      );
    },
    AddTodoRoute.name: (routeData) {
      final args = routeData.argsAs<AddTodoRouteArgs>(
          orElse: () => const AddTodoRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.AddTodoPage(key: args.key),
      );
    },
    HomeNavigatorRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.HomeNavigatorPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.FavoritePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/navigation-page',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          NavigationRoute.name,
          path: '/navigation-page',
          children: [
            _i5.RouteConfig(
              HomeNavigatorRoute.name,
              path: 'home-page',
              parent: NavigationRoute.name,
            ),
            _i5.RouteConfig(
              FavoriteRoute.name,
              path: 'favorite-page',
              parent: NavigationRoute.name,
            ),
          ],
        ),
        _i5.RouteConfig(
          AddTodoRoute.name,
          path: 'add-todo',
        ),
      ];
}

/// generated route for
/// [_i1.NavigationPage]
class NavigationRoute extends _i5.PageRouteInfo<void> {
  const NavigationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          path: '/navigation-page',
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';
}

/// generated route for
/// [_i2.AddTodoPage]
class AddTodoRoute extends _i5.PageRouteInfo<AddTodoRouteArgs> {
  AddTodoRoute({_i6.Key? key})
      : super(
          AddTodoRoute.name,
          path: 'add-todo',
          args: AddTodoRouteArgs(key: key),
        );

  static const String name = 'AddTodoRoute';
}

class AddTodoRouteArgs {
  const AddTodoRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'AddTodoRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeNavigatorPage]
class HomeNavigatorRoute extends _i5.PageRouteInfo<void> {
  const HomeNavigatorRoute()
      : super(
          HomeNavigatorRoute.name,
          path: 'home-page',
        );

  static const String name = 'HomeNavigatorRoute';
}

/// generated route for
/// [_i4.FavoritePage]
class FavoriteRoute extends _i5.PageRouteInfo<void> {
  const FavoriteRoute()
      : super(
          FavoriteRoute.name,
          path: 'favorite-page',
        );

  static const String name = 'FavoriteRoute';
}
