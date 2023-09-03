import 'package:flutter/material.dart';
import '../product.dart';

import '../../widgets/home/sale_header.dart';
import '../../widgets/card/sale_card.dart';
import '../../widgets/card/trend_category_sale_card.dart';
import '../../widgets/card/time_sale_card.dart';

import '../sale_theme.dart';

class CardSlide extends StatefulWidget {
  final String saleType;
  final String headerTitle;
  final String saleThemeName;
  const CardSlide({
    super.key,
    required this.saleType,
    required this.headerTitle,
    required this.saleThemeName,
  });

  @override
  State<CardSlide> createState() => _CardSlideState();
}

class _CardSlideState extends State<CardSlide> {
  late double cardHeight;
  late List<Product> productData;

  @override
  void initState() {
    super.initState();
    productData = SaleTheme(themeName: widget.saleThemeName).getThemeItems();
    switch (widget.saleType) {
      case 'basic':
        cardHeight = SaleCard(product: productData[0]).getCardHeight();
        break;
      case 'time_sale':
        cardHeight = TimeSaleCard(product: productData[0]).getCardHeight();
        break;
      case 'trend_category_sale':
        cardHeight =
            TrendCategorySaleCard(product: productData[0]).getCardHeight();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SaleHeader(
          title: widget.headerTitle,
          expandMoreBtn: false,
          verticalPadding: 12.0,
        ),
        SizedBox(
          height: cardHeight + 2,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: productData.length,
            itemBuilder: (BuildContext context, int index) {
              switch (widget.saleType) {
                case 'basic':
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: (index == 0) ? 16.0 : 0,
                        right: 16.0,
                        top: 1.0,
                        bottom: 1.0,
                      ),
                      child: SaleCard(product: productData[index]),
                    ),
                  );
                case 'time_sale':
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: (index == 0) ? 16.0 : 0,
                        right: 16.0,
                        top: 1.0,
                        bottom: 1.0,
                      ),
                      child: TimeSaleCard(product: productData[index]),
                    ),
                  );
                case 'trend_category_sale':
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: (index == 0) ? 16.0 : 0,
                        right: 16.0,
                        top: 1.0,
                        bottom: 1.0,
                      ),
                      child: TrendCategorySaleCard(product: productData[index]),
                    ),
                  );
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          height: 56.0,
        ),
      ],
    );
  }
}
