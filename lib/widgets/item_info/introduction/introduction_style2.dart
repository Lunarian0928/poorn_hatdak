import 'package:flutter/material.dart';

class IntroductionStyle2 extends StatelessWidget {
  final String imgName, body1, body2;
  const IntroductionStyle2({
    super.key,
    required this.imgName,
    required this.body1,
    required this.body2,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> paragraphData = [
      {
        'imgName': '${imgName}_introduction_style2_1',
        'body': body1,
      },
      {
        'imgName': '${imgName}_introduction_style2_2',
        'body': body2,
      }
    ];
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                for (int i = 0; i < 2; i++)
                  Column(
                    children: [
                      SizedBox(
                        width: 380,
                        height: 190,
                        child: Image.asset(
                          'assets/img/$imgName/${paragraphData[i]['imgName']}.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        paragraphData[i]['body']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF757575),
                        ),
                      ),
                      if (i == 0)
                        const SizedBox(
                          height: 24,
                        ),
                    ],
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
