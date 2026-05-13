import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationShellPage extends StatelessWidget {
  const NavigationShellPage({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  String _getTitle() {
    switch (navigationShell.currentIndex) {
      case 0:
        return 'Рецепты';
      case 1:
        return 'Категории';
      case 2:
        return 'Корзина';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_getTitle()), centerTitle: true),

      body: navigationShell,
      bottomNavigationBar: Material(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        clipBehavior: Clip.antiAlias,
        child: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _onTap,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.food_bank),
              label: 'Рецепты',
            ),
            NavigationDestination(
              icon: Icon(Icons.category),
              label: 'Категории',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_basket),
              label: 'Корзина',
            ),
          ],
        ),
      ),
    );
  }
}
