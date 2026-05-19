import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:recipe_book/application/router/app_router.dart';
import 'package:recipe_book/application/theme/app_theme.dart';
import 'package:recipe_book/generated/l10n.dart';

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Recipe Book',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
