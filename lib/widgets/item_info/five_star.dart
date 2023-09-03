import 'package:flutter/material.dart';

class FiveStar extends StatelessWidget {
  final double starSize;
  const FiveStar({
    super.key,
    this.starSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Icon(
            Icons.star,
            size: starSize,
            color: const Color(0xFFFBC02D),
          ),
      ],
    );
  }
}
