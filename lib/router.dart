// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter

import 'package:auto_route/auto_route.dart';
import 'package:test_1/add_to_do.dart';
import 'package:test_1/favorite_page.dart';

import 'my_home_page.dart';
import 'navigation_page.dart';
import 'navigator_home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/navigation-page", page: NavigationPage, initial: true, children: [
      AutoRoute(path: "home-page", page: HomeNavigatorPage, children: [
        // AutoRoute(path: "add-todo", page: AddTodoPage, initial: true),
      ]),
      AutoRoute(
        path: "favorite-page",
        page: FavoritePage,
      ),
    ]),
        AutoRoute(path: "add-todo", page: AddTodoPage, initial: true),
    
  ],
)
class $AppRouter {}
