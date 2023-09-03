import 'package:flutter/material.dart';

import '../widgets/header/header.dart';

import '../widgets/order_or_purchase/expand_more_tiles/orderer_info_tile.dart';
import '../widgets/order_or_purchase/expand_more_tiles/coupon_or_discount_tile.dart';
import '../widgets/order_or_purchase/expand_more_tiles/final_price_tile.dart';
import '../widgets/order_or_purchase/expand_more_tiles/point_benefit_tile.dart';

import '../widgets/order_or_purchase/destination_info_list_tile/destination_info_list_tile.dart';
import '../widgets/order_or_purchase/request_list_tile.dart';

class OrderOrPurchaseScreen extends StatefulWidget {
  final int totalPrice;

  const OrderOrPurchaseScreen({
    super.key,
    required this.totalPrice,
  });

  @override
  State<OrderOrPurchaseScreen> createState() => _OrderOrPurchaseScreenState();
}

class _OrderOrPurchaseScreenState extends State<OrderOrPurchaseScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetData = [
      const OrdererInfoTile(),
      const DestinationListTile(),
      const Request(),
      const CouponOrDiscountTile(),
      const FinalPriceTile(),
      const PointBenefitTile(),
    ];

    return Scaffold(
      appBar: const Header(title: '주문/결제'),
      body: ListView.builder(
        itemCount: widgetData.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: widgetData[index],
          );
        },
      ),
    );
  }
}
