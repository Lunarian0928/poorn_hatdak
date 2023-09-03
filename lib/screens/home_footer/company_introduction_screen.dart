import 'package:flutter/material.dart';

class CompanyIntroductonScreen extends StatelessWidget {
  const CompanyIntroductonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '회사소개',
        style: TextStyle(
          color: Color(0xFF212121),
        ),
      ),
    );
  }
}
