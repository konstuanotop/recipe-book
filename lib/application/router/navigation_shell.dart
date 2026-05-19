import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_book/generated/l10n.dart';

class NavigationShellPage extends StatelessWidget {
  const NavigationShellPage({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(switch (navigationShell.currentIndex) {
          0 => S.of(context).recipes,
          1 => S.of(context).categories,
          2 => S.of(context).basket,
          _ => '',
        }),
        centerTitle: true,
      ),
      body: navigationShell,
      bottomNavigationBar: Material(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        clipBehavior: Clip.antiAlias,
        child: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _onTap,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.food_bank),
              label: S.of(context).recipes,
            ),
            NavigationDestination(
              icon: Icon(Icons.category),
              label: S.of(context).categories,
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_basket),
              label: S.of(context).basket,
            ),
          ],
        ),
      ),
    );
  }
}
