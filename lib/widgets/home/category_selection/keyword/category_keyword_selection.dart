import 'package:flutter/material.dart';
import 'category_keyword_btn.dart';

class CategoryKeywordSelection extends StatefulWidget {
  final int selectedIndex;
  final List<bool> isSelected;
  final List<String> categoryList;

  final void Function(int value) onPressed;
  const CategoryKeywordSelection({
    super.key,
    required this.selectedIndex,
    required this.isSelected,
    required this.categoryList,
    required this.onPressed,
  });

  @override
  State<CategoryKeywordSelection> createState() =>
      _CategoryKeywordSelectionState();
}

class _CategoryKeywordSelectionState extends State<CategoryKeywordSelection> {
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
          isSelected: widget.isSelected,
          color: const Color(0xFF757575),
          selectedColor: Colors.white,
          fillColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: widget.onPressed,
          children: [
            for (int i = 0; i < widget.categoryList.length; i++)
              CategoryKeyWordBtn(
                btnName: widget.categoryList[i],
                isSelected: widget.isSelected[i],
                isLast: (i + 1 == widget.categoryList.length) ? true : false,
              ),
          ],
        ),
      ),
    );
  }
}
