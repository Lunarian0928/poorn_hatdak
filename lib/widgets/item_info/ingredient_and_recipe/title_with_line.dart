import 'package:flutter/material.dart';

class TitleWithLine extends StatelessWidget {
  final String title;
  final String subTitle;

  const TitleWithLine({
    super.key,
    required this.title,
    this.subTitle = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24.0,
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 2.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF795548),
                ),
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            (subTitle == '')
                ? Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF795548),
                    ),
                  )
                : Column(
                    children: [
                      Text(
                        subTitle,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFF795548),
                        ),
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF795548),
                        ),
                      ),
                    ],
                  ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Container(
                height: 2.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF795548),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
