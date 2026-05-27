import 'package:recipe_book/application/features/recipes/domain/model/recipe.dart';

abstract class RecipeRepository {
  Future<List<Recipe>> getRecipes();
}
