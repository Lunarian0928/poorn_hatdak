import 'package:flutter/material.dart';
import '../title_with_line.dart';

class Recipe extends StatelessWidget {
  final List<String> recipe;
  const Recipe({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    int recipeLength = recipe.length;

    if (recipeLength == 0) {
      return const Column(
        children: [],
      );
    } else {
      return Column(
        children: [
          const TitleWithLine(
            title: '간편 레시피',
            subTitle: '20분이면 끝나는',
          ),
          for (int i = 0; i < recipeLength; i++)
            Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: '${i + 1}. ',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF795548),
                    ),
                    children: [
                      TextSpan(
                        text: recipe[i],
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF795548),
                        ),
                      ),
                    ],
                  ),
                ),
                if (i != recipeLength)
                  const SizedBox(
                    height: 12.0,
                  ),
              ],
            ),
          const SizedBox(
            height: 56.0,
          ),
        ],
      );
    }
  }
}
