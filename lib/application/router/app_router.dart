import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_book/application/features/basket/presentation/pages/basket.dart';
import 'package:recipe_book/application/features/categories/presentation/pages/categories.dart';
import 'package:recipe_book/application/features/recipes/presentation/pages/recipes.dart';
import 'package:recipe_book/application/router/navigation_shell.dart';
import 'package:recipe_book/application/router/route_names.dart';
import 'package:recipe_book/application/router/route_paths.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _recipesNavigatorKey = GlobalKey<NavigatorState>();
final _categoriesNavigatorKey = GlobalKey<NavigatorState>();
final _basketNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/recipes',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return NavigationShellPage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _recipesNavigatorKey,
          routes: [
            GoRoute(
              // path: '/recipes',
              path: RoutePaths.recipes,
              name: RouteNames.recipes,
              builder: (context, state) {
                return const Recipes();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _categoriesNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.categories,
              name: RouteNames.categories,
              builder: (context, state) {
                return const Categories();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _basketNavigatorKey,
          routes: [
            GoRoute(
              path: RoutePaths.basket,
              name: RouteNames.basket,
              builder: (context, state) {
                return const Basket();
              },
            ),
          ],
        ),
      ],
    ),
  ],
);
