import 'package:flutter/material.dart';

import '../header/item_detail_header.dart';
import '../five_star.dart';
import '../../chart.dart';

import 'sort_btn.dart';
import 'ranking_sort_btn.dart';

class EveryReview extends StatefulWidget {
  const EveryReview({super.key});

  @override
  State<EveryReview> createState() => _EveryReviewState();
}

class _EveryReviewState extends State<EveryReview> {
  bool onlyPhotoReview = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        children: [
          const ItemDetailHeader(
            title: '전체후기',
            subTitle: '(4683건)',
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12.0),
                child: const Column(
                  children: [
                    Text(
                      '4.9',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    FiveStar(
                      starSize: 28.0,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      '(4683건)',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ],
                ),
              ),
              const Chart(),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF757575).withOpacity(0.1),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SortBtn(),
                RankingSortBtn(),
              ],
            ),
          ),
          CheckboxListTile(
            value: onlyPhotoReview,
            onChanged: (value) {
              setState(() {
                onlyPhotoReview = value!;
              });
            },
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 0.0,
              vertical: 0.0,
            ),
            title: Transform.translate(
              offset: const Offset(-10, 0),
              child: const Text(
                '포토후기만',
              ),
            ),
            controlAffinity: ListTileControlAffinity.leading,
            activeColor: Theme.of(context).primaryColor,
          )
        ],
      ),
    );
  }
}
