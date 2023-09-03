import 'package:flutter/material.dart';
import 'searchbar.dart';

class HomeHeader extends StatefulWidget implements PreferredSizeWidget {
  final dynamic tabController;
  const HomeHeader({super.key, required this.tabController});

  @override
  State<HomeHeader> createState() => _HomeHeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);
}

class _HomeHeaderState extends State<HomeHeader> {
  List<String> tabData = [
    '랭킹',
    '이달의 특가',
    '혜택 정리',
    '1팩 담기',
    '정기 배송',
  ];
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(
                children: [
                  Text(
                    '푸른햇닭',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'LotteriaDdag',
                      letterSpacing: 2.0,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 0.1
                        ..color = const Color(0xFF8BC34A),
                    ),
                  ),
                  Text(
                    '푸른햇닭',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'LotteriaDdag',
                      letterSpacing: 2.0,
                      color: Theme.of(context).primaryColor.withOpacity(0.2),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            width: 16,
          ),
          const Searchbar(),
          const SizedBox(
            width: 16,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
            color: const Color(0xFF212121).withOpacity(0.87),
          )
        ],
      ),
      bottom: TabBar(
        isScrollable: true,
        controller: widget.tabController,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          color: Color(0xFF212121),
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xFF757575),
        ),
        indicatorColor: Theme.of(context).primaryColor,
        onTap: (index) => {},
        tabs: [
          for (int i = 0; i < tabData.length; i++)
            Tab(
              child: Text(
                tabData[i],
              ),
            ),
        ],
      ),
    );
  }
}
