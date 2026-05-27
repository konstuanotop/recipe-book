import 'package:flutter/widgets.dart';
import 'package:recipe_book/application/features/recipes/domain/model/recipe.dart';
import 'package:recipe_book/core/extensions/duration_extension.dart';
import 'package:recipe_book/generated/l10n.dart';

class RecipeShareFormatter {
  static String format({
    required BuildContext context,
    required Recipe recipe,
  }) {
    return '${recipe.category}\n'
        '\n'
        '${S.of(context).cookingTime}:\n'
        '${recipe.cookingTime.toFormattedTime()}\n'
        '\n'
        '${S.of(context).ingredients}:\n'
        '${recipe.ingredients}\n'
        '\n'
        '${S.of(context).instruction}:\n'
        '${recipe.instruction}';
  }
}
