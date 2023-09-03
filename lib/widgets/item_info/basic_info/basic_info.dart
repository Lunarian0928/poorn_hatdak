import 'package:flutter/material.dart';
import '../../../classes/nutrient.dart';

import '../five_star.dart';
import '../nutrient_facts_label/nutrition_facts_label.dart';
import '../best_review/best_review_slide.dart';

class BasicInfo extends StatefulWidget {
  final String imgName, itemName;
  final double reviewScore;
  final int reviewNum, price;
  final Nutrient nutrient;

  const BasicInfo({
    super.key,
    required this.imgName,
    required this.itemName,
    required this.reviewScore,
    required this.reviewNum,
    required this.price,
    required this.nutrient,
  });

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  bool isFavorite = true;

  void toSetFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 432,
          height: 432,
          child: Image.asset(
            'assets/img/${widget.imgName}/${widget.imgName}_main.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.itemName,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFF212121),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      const FiveStar(),
                      const SizedBox(
                        width: 8,
                      ),
                      Text.rich(
                        TextSpan(
                          text: '${widget.reviewScore}점',
                          style: TextStyle(
                            fontSize: 12,
                            color: const Color(0xFF212121).withOpacity(0.8),
                          ),
                          children: [
                            TextSpan(
                              text: '(${widget.reviewNum})',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF757575),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${widget.price}원',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            splashColor: Colors.transparent,
                            onPressed: toSetFavorite,
                            icon: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_outline,
                                size: 24,
                                color: Color(
                                  isFavorite ? 0xFFF44336 : 0xFF212121,
                                )),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.share,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            NutritionFactsLabel(
              calorie: widget.nutrient.getCalorie(),
              carbohydrate: widget.nutrient.getCarbohydrate(),
              sugars: widget.nutrient.getSugars(),
              protein: widget.nutrient.getProtein(),
              fat: widget.nutrient.getFat(),
              saturatedFat: widget.nutrient.getSaturatedFat(),
              transFat: widget.nutrient.getTransFat(),
              cholesterol: widget.nutrient.getCholesterol(),
              natrium: widget.nutrient.getNatrium(),
            ),
            const BestReviewSlide(),
          ],
        ),
      ],
    );
  }
}
