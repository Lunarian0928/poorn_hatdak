import 'package:flutter/material.dart';
import 'text_field_gray_border.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 24.0,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Color(0xFFBDBDBD),
          ),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 24.0,
            ),
            child: Text(
              '배송 요청사항',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          TextFieldGrayBorder(),
        ],
      ),
    );
  }
}
