import 'package:flutter/material.dart';
import 'category_keyword_btn.dart';

class CategoryKeywordSelection extends StatefulWidget {
  const CategoryKeywordSelection({super.key});

  @override
  State<CategoryKeywordSelection> createState() =>
      _CategoryKeywordSelectionState();
}

class _CategoryKeywordSelectionState extends State<CategoryKeywordSelection> {
  List<String> categoryList = [
    '신상품',
    '닭고기',
    '샐러드·야채',
    '소고기',
    '돼지고기',
    '계란',
    '소스',
    '고구마·감자',
    '베이커리',
  ];

  late List<bool> isSelected;
  int selectedIndex = 0;

  @override
  void initState() {
    isSelected = List.generate(categoryList.length, (index) => false);
    isSelected[selectedIndex] = true;
    super.initState();
  }

  void toggleSelect(int index) {
    setState(() {
      isSelected[selectedIndex] = !isSelected[selectedIndex];
      isSelected[index] = !isSelected[index];
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        child: ToggleButtons(
          renderBorder: false,
          isSelected: isSelected,
          color: const Color(0xFF757575),
          selectedColor: Colors.white,
          fillColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: toggleSelect,
          children: [
            for (int i = 0; i < categoryList.length; i++)
              CategoryKeyWordBtn(
                btnName: categoryList[i],
                isSelected: isSelected[i],
                isLast: (i + 1 == categoryList.length) ? true : false,
              ),
          ],
        ),
      ),
    );
  }
}
