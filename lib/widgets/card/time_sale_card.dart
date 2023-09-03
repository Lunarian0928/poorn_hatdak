import 'package:flutter/material.dart';
import 'package:flutter_application/classes/ingredient.dart';
import '../../../../classes/nutrient.dart';
import '../../classes/product.dart';

import '../home/time_sale/time_sale_timer.dart';
import '../../../../screens/item_detail_screen.dart';

class TimeSaleCard extends StatefulWidget {
  final Product product;
  final double cardWidth = 384;
  final double cardHeight = 350;

  const TimeSaleCard({
    super.key,
    required this.product,
  });

  double getCardHeight() {
    return cardHeight;
  }

  @override
  State<TimeSaleCard> createState() => _TimeSaleCardState();
}

class _TimeSaleCardState extends State<TimeSaleCard> {
  @override
  Widget build(BuildContext context) {
    final String imgName = widget.product.getImgName();
    final String itemName = widget.product.getItemName();
    final double reviewScore = widget.product.getReviewScore();
    final int reviewNum = widget.product.getReviewNum();
    final int price = widget.product.getPrice();
    final Nutrient nutrient = widget.product.getNutrient();
    final List<Ingredient> ingredientData = widget.product.getIngredientData();
    final List<String> recipe = widget.product.getRecipe();
    final String title = widget.product.getTitle();
    final String subtitle = widget.product.getSubtitle();
    final String body = widget.product.getBody();
    final String body1 = widget.product.getBody1();
    final String body2 = widget.product.getBody2();

    return Column(
      children: [
        Container(
          width: widget.cardWidth,
          height: 256,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: const Color(0xFF757575).withOpacity(0.4),
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: GestureDetector(
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemDetail(
                    imgName: imgName,
                    itemName: itemName,
                    reviewScore: reviewScore,
                    reviewNum: reviewNum,
                    price: price,
                    nutrient: nutrient,
                    ingredientData: ingredientData,
                    recipe: recipe,
                    title: title,
                    subtitle: subtitle,
                    body: body,
                    body1: body1,
                    body2: body2,
                  ),
                ),
              );
            },
            child: Column(
              children: [
                SizedBox(
                  width: widget.cardWidth,
                  height: 216,
                  child: Image.asset(
                    'assets/img/$imgName/${imgName}_main.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  child: TimeSaleTimer(
                    discountDate: '2023-08-24',
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: widget.cardWidth,
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.star,
                    size: 16,
                    color: Color(0xFFFBC02D),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    '$reviewScore',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF757575),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    '($reviewNum)',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF757575),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                itemName,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF212121),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '4000',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF212121),
                    ),
                  ),
                  Text(
                    '원',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF212121),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
