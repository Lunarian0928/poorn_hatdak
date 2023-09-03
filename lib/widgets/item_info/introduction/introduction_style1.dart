import 'package:flutter/material.dart';

class IntroductionStyle1 extends StatelessWidget {
  final String imgName, title, subtitle, body;
  const IntroductionStyle1({
    super.key,
    required this.imgName,
    required this.title,
    required this.subtitle,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            width: 432,
            height: 216,
            child: Image.asset(
              'assets/img/$imgName/${imgName}_introduction_style1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF757575),
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF212121),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  body,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF757575),
                  ),
                ),
                const SizedBox(
                  height: 56.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
