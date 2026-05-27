import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_book/application/features/recipes/presentation/bloc/recipe_bloc.dart';
import 'package:recipe_book/application/features/recipes/presentation/widgets/recipe_item.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipeBloc, RecipeState>(
      builder: (context, state) {
        if (state is RecipeLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is RecipeLoadedState) {
          return RefreshIndicator(
            key: ValueKey('refresh_${state.recipes.length}_${DateTime.now()}'),
            onRefresh: () async {
              context.read<RecipeBloc>().add(RecipeRefreshRecipesEvent());
            },
            child: ListView.builder(
              itemCount: state.recipes.length,
              itemBuilder: (context, index) {
                final recipe = state.recipes[index];
                return RecipeWidgetItem(
                  key: ValueKey(recipe.id),
                  recipe: recipe,
                );
              },
            ),
          );
        }
        if (state is RecipeErrorState) {
          return Center(child: Text(state.message));
        }
        return const Center(child: Text('Нажмите для загрузки'));
      },
    );
  }
}
