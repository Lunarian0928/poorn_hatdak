import 'package:flutter/material.dart';
import '../../../classes/ingredient.dart';
import 'ingredient/ingredient_list.dart';
import 'recipe/recipe.dart';

class IngredientAndRecipe extends StatelessWidget {
  final List<Ingredient> basicIngredientData;
  final List<Ingredient> extraIngredientData;
  final List<String> recipe;
  const IngredientAndRecipe({
    super.key,
    required this.basicIngredientData,
    required this.extraIngredientData,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF795548).withOpacity(0.1),
      ),
      child: Column(
        children: [
          IngredientList(
            basicIngredientData: basicIngredientData,
            extraIngredientData: extraIngredientData,
          ),
          Recipe(recipe: recipe),
        ],
      ),
    );
  }
}
