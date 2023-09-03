import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../header/item_detail_header.dart';
import 'best_review_card.dart';

class BestReviewSlide extends StatelessWidget {
  const BestReviewSlide({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: ItemDetailHeader(
            title: '베스트 후기',
            subTitle: '',
            expandMoreBtn: false,
            verticalPadding: 12.0,
          ),
        ),
        SizedBox(
          height: 112,
          child: PageView.builder(
            controller: controller,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Center(
                  child: BestReviewCard(),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 5,
          effect: SlideEffect(
            dotHeight: 10,
            dotWidth: 10,
            dotColor: const Color(0xFF757575).withOpacity(0.4),
            activeDotColor: const Color(0XFF757575),
          ),
        ),
        const SizedBox(
          height: 56.0,
        ),
      ],
    );
  }
}
