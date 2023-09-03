import 'package:flutter/material.dart';

import 'widgets/header/header.dart';
import 'widgets/header/home_header.dart';

import 'widgets/bottom_tab_bar/bottom_tab_bar.dart';

import 'screens/menu_screen.dart';
import 'screens/coupon_screen.dart';
import 'screens/home_screen.dart';
import 'screens/user_screen.dart';
import 'screens/history_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with TickerProviderStateMixin {
  int selectedIndex = 2;
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  void onBottomNavBarItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> screenData = [
      {
        'header': const Header(title: '메뉴'),
        'screen': const MenuScreen(),
      },
      {
        'header': const Header(title: '이달의 쿠폰'),
        'screen': const CouponScreen(),
      },
      {
        'header': HomeHeader(
          tabController: tabController,
        ),
        'screen': HomeScreen(
          tabController: tabController,
        )
      },
      {
        'header': const Header(title: '로그인'),
        'screen': const UserScreen(),
      },
      {
        'header': const Header(title: '최근 본 상품'),
        'screen': const HistoryScreen(),
      },
    ];

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFF8BC34A),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'NotoSansKR',
          ),
          titleMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontFamily: 'NotoSansKR',
          ),
          titleSmall: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'NotoSansKR',
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          splashColor: Colors.transparent,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            overlayColor:
                MaterialStateColor.resolveWith((states) => Colors.transparent),
          ),
        ),
      ),
      home: Scaffold(
        appBar: screenData[selectedIndex]['header']!,
        bottomNavigationBar: BottomTabBar(
          selectedIndex: selectedIndex,
          selectIndex: onBottomNavBarItemTapped,
        ),
        body: screenData[selectedIndex]['screen'],
      ),
    );
  }
}
