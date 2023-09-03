import 'package:flutter/material.dart';
import '../../../../classes/ingredient.dart';

import 'ingredient_card.dart';

class IngredientWrap extends StatelessWidget {
  final List<Ingredient> ingredientData;
  final String title;

  const IngredientWrap({
    super.key,
    required this.ingredientData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    if (ingredientData.isEmpty) {
      return const Column(
        children: [],
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 28.0,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFF795548),
            ),
          ),
        ),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            for (int i = 0; i < ingredientData.length; i++)
              IngredientCard(
                imgName: ingredientData[i].getImgName(),
                name: ingredientData[i].getName(),
                origin: ingredientData[i].getOrigin(),
                price: ingredientData[i].getPrice(),
              ),
          ],
        ),
      ],
    );
  }
}
