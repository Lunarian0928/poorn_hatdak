import 'package:flutter/material.dart';

import 'category_icon_btn.dart';
import '../../expand_more_btn.dart';

class CategoryIconSelection extends StatefulWidget {
  const CategoryIconSelection({
    super.key,
  });

  @override
  State<CategoryIconSelection> createState() => _CategoryIconSelectionState();
}

class _CategoryIconSelectionState extends State<CategoryIconSelection>
    with TickerProviderStateMixin {
  bool expanded = false;
  double btnHeight = 82;

  late List<Map<String, dynamic>> btnList;
  late List<Map<String, dynamic>> extraBtnList;
  late int btnListLength;
  late int extraBtnListLength;
  late int lines;

  @override
  void initState() {
    super.initState();
    btnList = [
      {'iconShape': 'noun-presents-4266736', 'btnName': '선물하기'},
      {'iconShape': 'noun-drumstick-836866', 'btnName': '닭고기'},
      {'iconShape': 'noun-radish-848066', 'btnName': '샐러드·야채'},
      {'iconShape': 'noun-cow-5602480', 'btnName': '소고기'},
    ];

    extraBtnList = [
      {'iconShape': 'noun-pig-face-5602488', 'btnName': '돼지고기'},
      {'iconShape': 'noun-eggs-852186', 'btnName': '달걀'},
      {'iconShape': 'noun-rice-1556443', 'btnName': '밥'},
      {'iconShape': 'noun-toast-836868', 'btnName': '베이커리'},
      {'iconShape': 'noun-cream-849977', 'btnName': '소스'},
    ];
    btnListLength = btnList.length;
    extraBtnListLength = extraBtnList.length;
  }

  void tapFunc() {
    setState(() {
      expanded = !expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: btnHeight,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Wrap(
            children: [
              for (int i = 0; i < btnListLength; i++)
                CategoryIconBtn(
                  height: btnHeight,
                  iconShape: btnList[i]['iconShape'],
                  btnName: btnList[i]['btnName'],
                )
            ],
          ),
        ),
        Container(
          height: (expanded) ? btnHeight * 2.0 : 0.0,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Wrap(
            children: [
              for (int i = 0; i < extraBtnListLength; i++)
                CategoryIconBtn(
                  height: btnHeight,
                  iconShape: extraBtnList[i]['iconShape'],
                  btnName: extraBtnList[i]['btnName'],
                )
            ],
          ),
        ),
        ExpandMoreBtn(
          expanded: expanded,
          tapFunc: tapFunc,
        ),
      ],
    );
  }
}
