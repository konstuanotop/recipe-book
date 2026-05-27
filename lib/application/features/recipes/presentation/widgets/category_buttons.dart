import 'package:flutter/material.dart';
import 'package:recipe_book/generated/l10n.dart';

class CategoryButtonsWidget extends StatelessWidget {
  const CategoryButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
              backgroundColor: Theme.of(context).colorScheme.primary,
              alignment: Alignment.center,
            ),
            child: Text(
              S.of(context).desserts,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 14,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            S.of(context).soups,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            S.of(context).all,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
