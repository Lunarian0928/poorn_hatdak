import 'package:flutter/material.dart';

class UserAgreementScreen extends StatelessWidget {
  const UserAgreementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '이용약관',
        style: TextStyle(
          color: Color(0xFF212121),
        ),
      ),
    );
  }
}
