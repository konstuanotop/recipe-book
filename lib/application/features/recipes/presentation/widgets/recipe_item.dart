import 'package:flutter/material.dart';
import 'package:recipe_book/application/features/recipes/domain/model/recipe.dart';
import 'package:recipe_book/core/extensions/duration_extension.dart';
import 'package:recipe_book/core/formatters/recipe_share_formatter.dart';
import 'package:recipe_book/core/services/share_service.dart';

class RecipeWidgetItem extends StatelessWidget {
  const RecipeWidgetItem({super.key, required this.recipe});

  final Recipe recipe;

  Future<void> _shareRecipe(BuildContext context) async {
    final shareText = RecipeShareFormatter.format(
      context: context,
      recipe: recipe,
    );
    await ShareService.share(title: recipe.name, text: shareText);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Theme.of(context).colorScheme.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Theme.of(context).colorScheme.shadow,
          width: 0.5,
        ),
      ),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    recipe.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  IconButton(
                    icon: const Icon(Icons.share_outlined),
                    iconSize: 24,
                    onPressed: () {
                      _shareRecipe(context);
                    },
                  ),
                ],
              ),
              Text(
                recipe.cookingTime.toFormattedTime(),
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(height: 2),
              SizedBox(
                height: 40,
                child: Text(
                  recipe.instruction,
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                recipe.category,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
