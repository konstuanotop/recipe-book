import 'package:flutter/material.dart';
import 'package:recipe_book/generated/l10n.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(S.of(context).Recipes));
  }
}
