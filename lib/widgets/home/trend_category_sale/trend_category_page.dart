import 'package:flutter/material.dart';
import '../../../classes/product.dart';
import '../../card/trend_category_sale_card.dart';

class TrendCategoryPage extends StatelessWidget {
  final List<Product> productData;
  const TrendCategoryPage({
    super.key,
    required this.productData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Wrap(
        spacing: 16.0,
        runSpacing: 16.0,
        runAlignment: WrapAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Column(
              children: [
                TrendCategorySaleCard(product: productData[i]),
              ],
            ),
        ],
      ),
    );
  }
}
