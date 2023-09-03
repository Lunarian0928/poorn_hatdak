import 'package:flutter/material.dart';
import '../../../../classes/ingredient.dart';

import '../title_with_line.dart';
import 'ingredient_wrap.dart';

class IngredientList extends StatelessWidget {
  final List<Ingredient> basicIngredientData;
  final List<Ingredient> extraIngredientData;
  const IngredientList({
    super.key,
    required this.basicIngredientData,
    required this.extraIngredientData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleWithLine(title: '보내드리는 재료'),
        IngredientWrap(
          ingredientData: basicIngredientData,
          title: '기본 재료',
        ),
        IngredientWrap(
          ingredientData: extraIngredientData,
          title: '추가 재료',
        ),
        const SizedBox(
          height: 56.0,
        ),
      ],
    );
  }
}
