import 'package:flutter/material.dart';
import 'either_or_btn.dart';

class TotalPricePurchaseBtn extends StatelessWidget {
  final int totalPrice;
  const TotalPricePurchaseBtn({
    super.key,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 0,
            blurRadius: 5.0,
            offset: const Offset(0, -2.0), // changes position of shadow
          ),
        ],
      ),
      child: Wrap(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '총 주문금액',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '$totalPrice원',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              Text(
                '주문 시 할인',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const EitherOrBtn(styleNum: 1),
                EitherOrBtn(
                  styleNum: 2,
                  totalPrice: totalPrice,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
