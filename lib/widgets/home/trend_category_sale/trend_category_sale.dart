import 'package:flutter/material.dart';
import '../../../classes/product.dart';
import '../../../classes/sale_theme.dart';
import '../sale_header.dart';
import '../category_selection/keyword/category_keyword_selection.dart';
import 'trend_category_page.dart';

class TrendCategorySale extends StatefulWidget {
  const TrendCategorySale({super.key});

  @override
  State<TrendCategorySale> createState() => _TrendCategorySaleState();
}

class _TrendCategorySaleState extends State<TrendCategorySale> {
  int selectedPage = 0;
  late final PageController controller;

  List<String> categoryList = [
    '베이커리',
    '샐러드',
    '디폴트',
  ];

  late List<bool> isSelected;
  List<List<Product>> themeData = [
    SaleTheme(themeName: 'bread').getThemeItems(),
    SaleTheme(themeName: 'salad').getThemeItems(),
    SaleTheme().getThemeItems(),
  ];

  @override
  void initState() {
    super.initState();

    controller = PageController(initialPage: selectedPage);

    isSelected = List.generate(categoryList.length, (index) => false);
    isSelected[selectedPage] = true;
  }

  void toggleSelect(int index) {
    setState(() {
      isSelected[selectedPage] = !isSelected[selectedPage];
      selectedPage = index;
      isSelected[selectedPage] = !isSelected[selectedPage];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SaleHeader(
          title: '인기 카테고리',
          expandMoreBtn: false,
          verticalPadding: 12.0,
        ),
        CategoryKeywordSelection(
          selectedIndex: selectedPage,
          isSelected: isSelected,
          categoryList: categoryList,
          onPressed: toggleSelect,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 280 * 2 + 18,
          child: PageView.builder(
            controller: controller,
            itemCount: themeData.length,
            onPageChanged: toggleSelect,
            itemBuilder: (BuildContext context, int i) {
              return TrendCategoryPage(
                productData: themeData[i],
              );
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
