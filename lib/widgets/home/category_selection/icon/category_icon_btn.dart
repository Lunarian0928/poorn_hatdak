import 'package:flutter/material.dart';

class CategoryIconBtn extends StatelessWidget {
  final IconData iconShape;
  final String btnName;

  const CategoryIconBtn({
    super.key,
    required this.iconShape,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Column(
        children: [
          Icon(
            iconShape,
            size: 36,
            color: const Color(0xFF757575),
          ),
          const SizedBox(height: 8),
          Text(
            btnName,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xFF757575),
            ),
          ),
        ],
      ),
    );
  }
}
