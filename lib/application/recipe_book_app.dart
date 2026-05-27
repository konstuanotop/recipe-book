import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:recipe_book/application/features/recipes/data/datasources/recipe_remote_data_source_impl.dart';
import 'package:recipe_book/application/features/recipes/data/repository/recipe_repository_impl.dart';
import 'package:recipe_book/application/features/recipes/domain/repository/recipe_repository.dart';
import 'package:recipe_book/application/router/app_router.dart';
import 'package:recipe_book/application/theme/app_theme.dart';
import 'package:recipe_book/generated/l10n.dart';
import 'package:http/http.dart' as http;

class RecipeBookApp extends StatefulWidget {
  const RecipeBookApp({super.key});

  @override
  State<RecipeBookApp> createState() => _RecipeBookAppState();
}

class _RecipeBookAppState extends State<RecipeBookApp> {
  late final http.Client _httpClient;
  late final RecipeRemoteDataSourceImpl _remoteDataSource;
  late final RecipeRepository _recipeRepository;

  @override
  void initState() {
    super.initState();
    _httpClient = http.Client();
    _remoteDataSource = RecipeRemoteDataSourceImpl(_httpClient);
    _recipeRepository = RecipeRepositoryImpl(
      remoteDataSource: _remoteDataSource,
    );
  }

  @override
  void dispose() {
    _httpClient.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<RecipeRepository>.value(
      value: _recipeRepository,
      child: MaterialApp.router(
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
      ),
    );
  }
}
