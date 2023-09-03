import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '개인정보처리방침',
        style: TextStyle(
          color: Color(0xFF212121),
        ),
      ),
    );
  }
}
