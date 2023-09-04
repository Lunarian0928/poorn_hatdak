import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryIconBtn extends StatelessWidget {
  final double height;
  final String iconShape;
  final String btnName;

  const CategoryIconBtn({
    super.key,
    required this.height,
    required this.iconShape,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 32.0) / 4,
      height: height,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 12.0,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/icon/category/$iconShape.svg',
            width: 32.0,
            height: 32.0,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            btnName,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Color(0xFF757575),
            ),
          ),
        ],
      ),
    );
  }
}
