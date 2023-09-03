import 'package:flutter/material.dart';

class SortBtn extends StatefulWidget {
  const SortBtn({super.key});

  @override
  State<SortBtn> createState() => _SortBtnState();
}

class _SortBtnState extends State<SortBtn> {
  List<bool> isSelected = [
    true,
    false,
  ];
  int selectedIndex = 0;

  void toggleSelect(int index) {
    setState(() {
      isSelected[selectedIndex] = !isSelected[selectedIndex];
      isSelected[index] = !isSelected[index];
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      renderBorder: false,
      isSelected: isSelected,
      color: const Color(0xFF757575),
      selectedColor: const Color(0xFF212121),
      fillColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: toggleSelect,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 6.0,
            vertical: 12.0,
          ),
          child: Text(
            '베스트순',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 6.0,
            vertical: 12.0,
          ),
          child: Text(
            '최신순',
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}
