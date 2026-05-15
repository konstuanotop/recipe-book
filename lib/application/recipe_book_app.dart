import 'package:flutter/material.dart';
import 'package:recipe_book/application/router/app_router.dart';
import 'package:recipe_book/application/theme/app_theme.dart';

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Recipe Book',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
