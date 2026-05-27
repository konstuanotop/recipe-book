import 'package:recipe_book/application/features/recipes/data/dto/recipe_dto.dart';
import 'package:recipe_book/application/features/recipes/domain/model/recipe.dart';

extension RecipeMapper on RecipeDto {
  Recipe toEntity() {
    Duration parseCookingTime(String timeStr) {
      final parts = timeStr.split(':');
      if (parts.length == 3) {
        final hours = int.parse(parts[0]);
        final minutes = int.parse(parts[1]);
        final seconds = int.parse(parts[2]);
        return Duration(hours: hours, minutes: minutes, seconds: seconds);
      } else if (parts.length == 2) {
        final minutes = int.parse(parts[0]);
        final seconds = int.parse(parts[1]);
        return Duration(minutes: minutes, seconds: seconds);
      } else {
        final minutes = int.tryParse(timeStr);

        if (minutes != null) {
          return Duration(minutes: minutes);
        }
        throw FormatException('Invalid cooking time format: $timeStr');
      }
    }

    final duration = parseCookingTime(cookingTime);

    return Recipe(
      id: id.toString(),
      name: name,
      cookingTime: duration,
      instruction: instruction,
      category: category,
      ingredients: ingredients,
      img: img,
    );
  }
}
