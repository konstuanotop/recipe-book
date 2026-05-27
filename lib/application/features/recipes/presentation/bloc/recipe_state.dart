part of 'recipe_bloc.dart';

sealed class RecipeState extends Equatable {
  const RecipeState();

  @override
  List<Object> get props => [];
}

final class RecipeInitial extends RecipeState {}

class RecipeLoadingState extends RecipeState {}

class RecipeLoadedState extends RecipeState {
  const RecipeLoadedState(this.recipes);

  final List<Recipe> recipes;

  @override
  List<Object> get props => [recipes];
}

class RecipeErrorState extends RecipeState {
  const RecipeErrorState(this.message);

  final String message;
}
