import 'package:flutter/material.dart';
import 'package:recipe_book/generated/l10n.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(S.of(context).categories));
  }
}
