import 'package:flutter/material.dart';

import '../widgets/order_or_purchase/expand_more_tiles/text_with_expand_btn.dart';

class ExpandMoreTile extends StatelessWidget {
  final String title, expandMoreBtnLabel;
  final bool isEmphasized;

  const ExpandMoreTile({
    super.key,
    required this.title,
    required this.expandMoreBtnLabel,
    this.isEmphasized = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 24.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Color(0xFFBDBDBD),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextWithExpandBtn(
            text: expandMoreBtnLabel,
            isEmphasized: isEmphasized,
          ),
        ],
      ),
    );
  }
}
