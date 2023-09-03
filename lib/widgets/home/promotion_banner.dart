import 'package:flutter/material.dart';

class PromotionBanner extends StatelessWidget {
  const PromotionBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 228,
          child: Image.asset(
            'assets/img/promotion_banner/grilled_chicken_kebab_banner.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        const Positioned(
          left: 16,
          bottom: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '튀르키예 정통식',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                '그릴드 치킨 케밥',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
