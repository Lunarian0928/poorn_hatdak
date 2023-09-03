import 'package:flutter/material.dart';
import 'package:flutter_application/screens/home_header/benefit_arrangement_screen.dart';
import 'package:flutter_application/screens/home_header/one_pack_up_screen.dart';
import 'package:flutter_application/screens/home_header/regular_shipping_screen.dart';

import '../widgets/home/promotion_banner.dart';

import '../widgets/footer/home_footer.dart';

import '../widgets/home/category_selection/icon/category_icon_selection.dart';
import '../widgets/home/time_sale/time_sale.dart';
import '../widgets/home/trend_category_sale/trend_category_sale.dart';
import '../widgets/home/sale/sale.dart';

import 'home_header/bargain_price_screen.dart';

class HomeScreen extends StatefulWidget {
  final TabController tabController;
  const HomeScreen({
    super.key,
    required this.tabController,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetData = [
      const PromotionBanner(),
      const CategoryIconSelection(),
      const TimeSale(),
      const Sale(
        headerTitle: '빵돌이 빵순이 모여라',
        saleThemeName: 'bread',
      ),
      const Sale(headerTitle: '한국인은 밥심'),
      const TrendCategorySale(),
      const HomeFooter(),
    ];

    return TabBarView(
      controller: widget.tabController,
      children: [
        Tab(
          child: ListView.builder(
            itemCount: widgetData.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: widgetData[index],
              );
            },
          ),
        ),
        const Tab(
          child: BargainPriceScreen(),
        ),
        const Tab(
          child: BenefitArrangementScreen(),
        ),
        const Tab(
          child: OnePackUpScreen(),
        ),
        const Tab(
          child: RegularShippingScreen(),
        ),
      ],
    );
  }
}
