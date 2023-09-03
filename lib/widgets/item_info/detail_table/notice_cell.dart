import 'package:flutter/material.dart';

class NoticeCell extends StatelessWidget {
  final List<String> data;
  const NoticeCell({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final dataLength = data.length;
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 4.0,
          horizontal: 8.0,
        ),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color(0xFF212121),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < dataLength; i++)
              Padding(
                padding: EdgeInsets.only(
                  bottom: (i == dataLength) ? 0.0 : 4.0,
                ),
                child: Text(
                  '• ${data[i]}',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Color(0xFF757575),
                  ),
                ),
              )
          ],
        ));
  }
}
