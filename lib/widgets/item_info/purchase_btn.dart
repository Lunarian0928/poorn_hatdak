import 'package:flutter/material.dart';
import '../../classes/ingredient.dart';
import '../../screens/ingredient_select_screen.dart';

class PurchaseBtn extends StatelessWidget {
  final List<Ingredient> extraIngredientData;
  final int basicPrice;
  const PurchaseBtn({
    super.key,
    required this.extraIngredientData,
    required this.basicPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: ElevatedButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => IngredientSelectScreen(
                extraIngredientData: extraIngredientData,
                basicPrice: basicPrice,
              ),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        child: const Text(
          '구매하기',
        ),
      ),
    );
  }
}
