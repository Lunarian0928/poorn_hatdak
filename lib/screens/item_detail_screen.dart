import 'package:flutter/material.dart';

import '../classes/nutrient.dart';
import '../classes/ingredient.dart';

import '../widgets/header/header.dart';
import '../widgets/item_info/basic_info/basic_info.dart';
import '../widgets/item_info/introduction/introduction_style1.dart';
import '../widgets/item_info/introduction/introduction_style2.dart';
import '../widgets/item_info/ingredient_and_recipe/ingredient_and_recipe.dart';
import '../widgets/item_info/detail_table/detail_table.dart';
import '../widgets/item_info/every_review/every_review.dart';
import '../widgets/item_info/purchase_btn.dart';

class ItemDetail extends StatefulWidget {
  final String imgName, itemName;
  final double reviewScore;
  final int reviewNum, price;
  final Nutrient nutrient;
  final List<Ingredient> ingredientData;
  final List<String> recipe;
  final String title, subtitle, body, body1, body2;

  const ItemDetail({
    super.key,
    required this.imgName,
    required this.itemName,
    required this.reviewScore,
    required this.reviewNum,
    required this.price,
    required this.nutrient,
    required this.ingredientData,
    required this.recipe,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.body1,
    required this.body2,
  });

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  List<Ingredient> basicIngredientData = [];
  List<Ingredient> extraIngredientData = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.ingredientData.length; i++) {
      Ingredient ingredient = widget.ingredientData[i];
      if (ingredient.getPrice() == 0) {
        basicIngredientData.add(ingredient);
      } else {
        extraIngredientData.add(ingredient);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetData = [
      BasicInfo(
        imgName: widget.imgName,
        itemName: widget.itemName,
        reviewScore: widget.reviewScore,
        reviewNum: widget.reviewNum,
        price: widget.price,
        nutrient: widget.nutrient,
      ),
      IntroductionStyle1(
        imgName: widget.imgName,
        title: widget.title,
        subtitle: widget.subtitle,
        body: widget.body,
      ),
      IntroductionStyle2(
        imgName: widget.imgName,
        body1: widget.body1,
        body2: widget.body2,
      ),
      IngredientAndRecipe(
        basicIngredientData: basicIngredientData,
        extraIngredientData: extraIngredientData,
        recipe: widget.recipe,
      ),
      const DetailTable(),
      const EveryReview(),
    ];
    return Scaffold(
      appBar: const Header(title: '상품 상세 정보'),
      body: ListView.builder(
        itemCount: widgetData.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: widgetData[index],
          );
        },
      ),
      floatingActionButton: PurchaseBtn(
        extraIngredientData: extraIngredientData,
        basicPrice: widget.price,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
