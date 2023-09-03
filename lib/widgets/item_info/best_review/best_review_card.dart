import 'package:flutter/material.dart';

import '../five_star.dart';

class BestReviewCard extends StatelessWidget {
  const BestReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 112.0,
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xFF757575).withOpacity(0.4),
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  '한방재료가 진하게 우러나와서 더 맛있는 거 같아요! 복날에 자주 시켜먹어야겠습니다.',
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF212121),
                  ),
                ),
              ),
              FiveStar(),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '유저 이름',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF757575),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.0,
                        vertical: 4.0,
                      ),
                      child: VerticalDivider(
                        width: 1,
                        thickness: 1,
                        color: Color(0xFFBDBDBD),
                      ),
                    ),
                    Text(
                      '작성일',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
