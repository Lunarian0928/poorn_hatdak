import 'package:flutter/material.dart';
import '../../../classes/product.dart';
import '../../../classes/sale_theme.dart';
import '../sale_header.dart';
import '../category_selection/keyword/category_keyword_selection.dart';
import '../../card/trend_category_sale_card.dart';

class TrendCategorySale extends StatelessWidget {
  const TrendCategorySale({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> productData = SaleTheme(themeName: 'salad').getThemeItems();
    return Column(
      children: [
        const SaleHeader(
          title: '인기 카테고리',
          expandMoreBtn: false,
          verticalPadding: 12.0,
        ),
        const CategoryKeywordSelection(),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            for (int i = 0; i < productData.length; i++)
              TrendCategorySaleCard(product: productData[i])
          ],
        ),
        const SizedBox(
          height: 56,
        ),
      ],
    );
  }
}
