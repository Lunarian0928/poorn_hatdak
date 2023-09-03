import 'package:flutter/material.dart';
import '../classes/ingredient.dart';
import '../widgets/header/header.dart';

import '../widgets/ingredient_select/total_price_purchase_btn/total_price_purchase_btn.dart';
import '../widgets/ingredient_select/ingredient_select.dart';

class IngredientSelectScreen extends StatefulWidget {
  final List<Ingredient> extraIngredientData;
  final int basicPrice;
  const IngredientSelectScreen({
    super.key,
    required this.extraIngredientData,
    required this.basicPrice,
  });

  @override
  State<IngredientSelectScreen> createState() => _IngredientSelectScreenState();
}

class _IngredientSelectScreenState extends State<IngredientSelectScreen> {
  late List<bool> isCheckedBasicData;
  late List<bool> isCheckedExtraData;
  late int totalPrice;

  @override
  void initState() {
    super.initState();
    totalPrice = widget.basicPrice;

    isCheckedExtraData =
        List.generate(widget.extraIngredientData.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: '재료 선택'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: const Color(0xFFBDBDBD).withOpacity(0.4),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '가격',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF212121),
                    ),
                  ),
                  Text(
                    '$totalPrice원',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF212121),
                    ),
                  ),
                ],
              ),
            ),
            IngredientSelect(
              title: '추가 재료',
              ingredientData: widget.extraIngredientData,
              isCheckedData: isCheckedExtraData,
              totalPrice: totalPrice,
              makeCheckboxListTile: makeCheckboxListTile,
            ),
          ],
        ),
      ),
      floatingActionButton: TotalPricePurchaseBtn(totalPrice: totalPrice),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget makeCheckboxListTile(
      {required List<Ingredient> ingredientData,
      required isCheckedData,
      required int i}) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: const Color(0xFFBDBDBD).withOpacity(0.4),
          ),
        ),
      ),
      child: CheckboxListTile(
        value: isCheckedData[i],
        onChanged: (value) {
          setState(() {
            isCheckedData[i] = value!;
            if (value) {
              totalPrice += ingredientData[i].getPrice();
            } else {
              totalPrice -= ingredientData[i].getPrice();
            }
          });
        },
        title: Text(ingredientData[i].getName()),
        subtitle: Text(ingredientData[i].getOrigin()),
        secondary: Text('+${ingredientData[i].getPrice()}원'),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
