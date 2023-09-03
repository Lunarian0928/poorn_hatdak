import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  final int selectedIndex;
  final dynamic selectIndex;
  const BottomTabBar({
    super.key,
    required this.selectedIndex,
    required this.selectIndex,
  });

  @override
  State<BottomTabBar> createState() => _BottomTabBar();
}

class _BottomTabBar extends State<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> itemData = [
      const {
        'icon': Icons.menu_outlined,
        'activeIcon': Icons.menu,
        'label': '메뉴',
      },
      {
        'icon': Icons.rocket_outlined,
        'activeIcon': Icons.rocket,
        'label': '쿠폰',
      },
      {
        'icon': Icons.home_outlined,
        'activeIcon': Icons.home,
        'label': '홈',
      },
      {
        'icon': Icons.person_outline,
        'activeIcon': Icons.person,
        'label': '유저',
      },
      {
        'icon': Icons.history_outlined,
        'activeIcon': Icons.history,
        'label': '최근 본 상품',
      },
    ];
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: const Color(0xFF757575),
      selectedItemColor: const Color(0xFF212121),
      currentIndex: widget.selectedIndex,
      onTap: widget.selectIndex,
      items: [
        for (int i = 0; i < itemData.length; i++)
          BottomNavigationBarItem(
            icon: Icon(
              itemData[i]['icon'],
              size: 32,
            ),
            activeIcon: Icon(
              itemData[i]['activeIcon'],
              size: 32,
            ),
            label: itemData[i]['label'],
          ),
      ],
    );
  }
}
