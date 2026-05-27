import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_book/application/features/recipes/domain/model/recipe.dart';
import 'package:recipe_book/application/features/recipes/domain/repository/recipe_repository.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc({required this.recipeRepository}) : super(RecipeInitial()) {
    on<RecipeGetRecipesEvent>(_onGetRecipes);
    on<RecipeRefreshRecipesEvent>(_onRefreshRecipes);
  }

  final RecipeRepository recipeRepository;

  _onGetRecipes(RecipeGetRecipesEvent event, Emitter<RecipeState> emit) async {
    emit(RecipeLoadingState());

    try {
      final recipes = await recipeRepository.getRecipes();
      emit(RecipeLoadedState(recipes));
    } catch (e) {
      emit(RecipeErrorState(e.toString()));
    }
  }

  _onRefreshRecipes(
    RecipeRefreshRecipesEvent event,
    Emitter<RecipeState> emit,
  ) async {
    try {
      final recipes = await recipeRepository.getRecipes();

      if (state is RecipeLoadedState) {
        emit(RecipeLoadedState(recipes));
      } else {
        emit(RecipeLoadedState(recipes));
      }
    } catch (e) {
      emit(RecipeErrorState(e.toString()));
    }
  }
}
