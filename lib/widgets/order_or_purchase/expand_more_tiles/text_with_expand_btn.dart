import 'package:flutter/material.dart';

class TextWithExpandBtn extends StatelessWidget {
  final String text;
  final bool isEmphasized;
  const TextWithExpandBtn({
    super.key,
    required this.text,
    this.isEmphasized = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: (isEmphasized) ? 16.0 : 14.0,
              fontWeight: (isEmphasized) ? FontWeight.w700 : FontWeight.w400,
              color: (isEmphasized)
                  ? Theme.of(context).primaryColor
                  : const Color(0xFF212121),
            ),
          ),
          const Icon(
            Icons.expand_more,
            size: 24.0,
            color: Color(0xFF757575),
          ),
        ],
      ),
    );
  }
}
