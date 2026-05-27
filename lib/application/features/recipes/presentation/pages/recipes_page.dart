import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book/application/features/recipes/domain/repository/recipe_repository.dart';
import 'package:recipe_book/application/features/recipes/presentation/bloc/recipe_bloc.dart';
import 'package:recipe_book/application/features/recipes/presentation/widgets/category_buttons.dart';
import 'package:recipe_book/application/features/recipes/presentation/widgets/recipes_list.dart';
import 'package:recipe_book/application/theme/app_colors.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({super.key});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecipeBloc(recipeRepository: context.read<RecipeRepository>())
            ..add(RecipeGetRecipesEvent()),
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24,
                    color: AppColors.gray,
                  ),
                  hintText: 'Искать по названию',
                  hintStyle: Theme.of(context).inputDecorationTheme.labelStyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  isDense: true,
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {},
            shape: CircleBorder(),
            child: const Icon(Icons.add),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 18),
              CategoryButtonsWidget(),
              const SizedBox(height: 10),
              Expanded(child: RecipesList()),
            ],
          ),
        ),
      ),
    );
  }
}
