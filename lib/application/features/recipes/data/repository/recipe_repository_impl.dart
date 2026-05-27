import 'package:recipe_book/application/features/recipes/data/datasources/recipe_remote_data_source_impl.dart';
import 'package:recipe_book/application/features/recipes/data/dto/recipe_dto.dart';
import 'package:recipe_book/application/features/recipes/data/mapper/recipe_mapper.dart';
import 'package:recipe_book/application/features/recipes/domain/model/recipe.dart';
import 'package:recipe_book/application/features/recipes/domain/repository/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  RecipeRepositoryImpl({required this.remoteDataSource});

  final RecipeRemoteDataSourceImpl remoteDataSource;

  @override
  Future<List<Recipe>> getRecipes() async {
    try {
      final List<RecipeDto> recipesDto = await remoteDataSource.getRecipes();
      final List<Recipe> recipes = recipesDto
          .map((recipeDto) => recipeDto.toEntity())
          .toList();

      return recipes;
    } catch (e) {
      throw Exception('Failed to get recipes: $e');
    }
  }
}
