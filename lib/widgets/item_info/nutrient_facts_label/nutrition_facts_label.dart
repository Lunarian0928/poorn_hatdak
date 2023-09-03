import 'package:flutter/material.dart';
import '../header/item_detail_header.dart';

class NutritionFactsLabel extends StatelessWidget {
  final int calorie;
  final double carbohydrate,
      sugars,
      protein,
      fat,
      saturatedFat,
      transFat,
      cholesterol,
      natrium;

  const NutritionFactsLabel({
    super.key,
    required this.calorie,
    required this.carbohydrate,
    required this.sugars,
    required this.protein,
    required this.fat,
    required this.saturatedFat,
    required this.transFat,
    required this.cholesterol,
    required this.natrium,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> nutrientData = [
      {
        'nutrient': '탄수화물',
        'content': carbohydrate,
        'unit': 'g',
      },
      {
        'nutrient': '당류',
        'content': sugars,
        'unit': 'g',
      },
      {
        'nutrient': '단백질',
        'content': protein,
        'unit': 'g',
      },
      {
        'nutrient': '지방',
        'content': fat,
        'unit': 'g',
      },
      {
        'nutrient': '포화지방',
        'content': saturatedFat,
        'unit': 'g',
      },
      {
        'nutrient': '트랜스지방',
        'content': transFat,
        'unit': 'g',
      },
      {
        'nutrient': '콜레스테롤',
        'content': cholesterol,
        'unit': 'mg',
      },
      {
        'nutrient': '나트륨',
        'content': natrium,
        'unit': 'mg',
      },
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ItemDetailHeader(
            title: '영양성분',
            subTitle: '(1인분 기준)',
            expandMoreBtn: false,
            verticalPadding: 12.0,
          ),
          Text(
            '${calorie}kcal',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color(0xFF212121),
            ),
          ),
          Container(
            height: 12.0,
            margin: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF757575).withOpacity(0.1),
            ),
          ),
          Wrap(
            children: [
              for (int i = 0; i < nutrientData.length; i++)
                Container(
                  padding: const EdgeInsets.all(12.0),
                  width: 100,
                  child: Column(
                    children: [
                      Text(
                        nutrientData[i]['nutrient'],
                        style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xFF757575),
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        '${nutrientData[i]['content']}${nutrientData[i]['unit']}',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF212121),
                        ),
                      )
                    ],
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 56.0,
          ),
        ],
      ),
    );
  }
}
