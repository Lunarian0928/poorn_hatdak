import 'package:flutter/material.dart';

class NoticeScreen extends StatelessWidget {
  const NoticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '공지사항',
        style: TextStyle(
          color: Color(0xFF212121),
        ),
      ),
    );
  }
}
