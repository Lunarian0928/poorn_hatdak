import 'package:flutter/material.dart';

class CategoryKeyWordBtn extends StatelessWidget {
  final String btnName;
  final bool isSelected, isLast;
  const CategoryKeyWordBtn({
    super.key,
    required this.btnName,
    required this.isSelected,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 8,
      ),
      margin: EdgeInsets.only(
        right: isLast ? 0.0 : 8.0,
      ),
      decoration: BoxDecoration(
        color: isSelected
            ? Colors.black
            : const Color(0xFF757575).withOpacity(0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        btnName,
      ),
    );
  }
}
