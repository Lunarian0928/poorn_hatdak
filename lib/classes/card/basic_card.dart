import 'package:flutter/material.dart';
import 'package:flutter_application/classes/ingredient.dart';
import '../../../../classes/nutrient.dart';
import '../product.dart';

import '../../widgets/home/time_sale/time_sale_timer.dart';
import '../../../../screens/item_detail_screen.dart';

class BasicCard extends StatefulWidget {
  final double cardWidth, cardHeight, imgHeight;
  final Product product;
  final bool isDiscount;

  const BasicCard({
    super.key,
    required this.cardWidth,
    required this.cardHeight,
    required this.imgHeight,
    required this.product,
    this.isDiscount = false,
  });

  double getCardHeight() {
    return cardHeight;
  }

  @override
  State<BasicCard> createState() => _BasicCardState();
}

class _BasicCardState extends State<BasicCard> {
  late String imgName, itemName;
  late double reviewScore;
  late int reviewNum, price;
  late Nutrient nutrient;
  late List<Ingredient> ingredientData;
  late List<String> recipe;
  late String title, subtitle, body, body1, body2;

  @override
  void initState() {
    super.initState();
    imgName = widget.product.getImgName();
    itemName = widget.product.getItemName();
    reviewScore = widget.product.getReviewScore();
    reviewNum = widget.product.getReviewNum();
    price = widget.product.getPrice();
    nutrient = widget.product.getNutrient();
    ingredientData = widget.product.getIngredientData();
    recipe = widget.product.getRecipe();
    title = widget.product.getTitle();
    subtitle = widget.product.getSubtitle();
    body = widget.product.getBody();
    body1 = widget.product.getBody1();
    body2 = widget.product.getBody2();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: widget.cardWidth,
              height: widget.imgHeight,
              child: Image.asset(
                'assets/img/$imgName/${imgName}_main.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            if (widget.isDiscount)
              const TimeSaleTimer(
                discountDate: '2023-08-31',
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
                    style: TextStyle(
                      fontSize: widget.isDiscount ? 16 : 14,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF212121),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '$price',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: widget.isDiscount ? 18 : 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF212121),
                        ),
                      ),
                      Text(
                        '원',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: widget.isDiscount ? 16 : 14,
                          color: const Color(0xFF212121),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
