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

class _CategoryIconSelectionState extends State<CategoryIconSelection> {
  bool expanded = false;
  double height = 180;

  dynamic tapFunc() {
    setState(() {
      expanded = expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> btnList = [
      {'iconShape': Icons.new_releases, 'btnName': '신상품'},
      {'iconShape': Icons.error, 'btnName': '닭고기'},
      {'iconShape': Icons.question_mark, 'btnName': '샐러드·야채'},
      {'iconShape': Icons.question_mark, 'btnName': '소고기'},
      {'iconShape': Icons.question_mark, 'btnName': '돼지고기'},
      {'iconShape': Icons.question_mark, 'btnName': '계란'},
      {'iconShape': Icons.question_mark, 'btnName': '소스'},
      {'iconShape': Icons.question_mark, 'btnName': '고구마·감자'},
      {'iconShape': Icons.question_mark, 'btnName': '베이커리'},
    ];

    return Column(
      children: [
        Container(
          height: height,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Wrap(
            children: [
              for (int i = 0; i < btnList.length; i++)
                CategoryIconBtn(
                  iconShape: btnList[i]['iconShape'],
                  btnName: btnList[i]['btnName'],
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
