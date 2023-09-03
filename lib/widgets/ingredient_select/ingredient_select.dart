import 'package:flutter/material.dart';
import '../../classes/ingredient.dart';

import '../item_info/header/item_detail_header.dart';

class IngredientSelect extends StatefulWidget {
  final String title;
  final List<Ingredient> ingredientData;
  final List<bool> isCheckedData;
  final int totalPrice;
  final dynamic makeCheckboxListTile;

  const IngredientSelect({
    super.key,
    required this.title,
    required this.ingredientData,
    required this.isCheckedData,
    required this.totalPrice,
    required this.makeCheckboxListTile,
  });

  @override
  State<IngredientSelect> createState() => _IngredientSelect();
}

class _IngredientSelect extends State<IngredientSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemDetailHeader(
          title: widget.title,
          horiziontalPadding: 16.0,
        ),
        for (int i = 0; i < widget.ingredientData.length; i++)
          widget.makeCheckboxListTile(
            ingredientData: widget.ingredientData,
            isCheckedData: widget.isCheckedData,
            i: i,
          ),
        const SizedBox(
          height: 24.0,
        ),
      ],
    );
  }
}
