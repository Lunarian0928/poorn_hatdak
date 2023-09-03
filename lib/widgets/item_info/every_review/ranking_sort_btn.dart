import 'package:flutter/material.dart';

class RankingSortBtn extends StatelessWidget {
  const RankingSortBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 6.0,
          vertical: 12.0,
        ),
        backgroundColor: const Color(0xFF212121),
        foregroundColor: const Color(0xFF212121),
      ),
      icon: const Icon(
        Icons.filter_alt,
        size: 14.0,
        color: Colors.white,
      ),
      label: const Text(
        '등급별 정렬',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
