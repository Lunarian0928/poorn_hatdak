import 'package:flutter/material.dart';

class ExpandMoreBtn extends StatefulWidget {
  final bool expanded;
  final dynamic tapFunc;

  const ExpandMoreBtn({
    super.key,
    required this.expanded,
    required this.tapFunc,
  });

  @override
  State<ExpandMoreBtn> createState() => _ExpandMoreBtnState();
}

class _ExpandMoreBtnState extends State<ExpandMoreBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.tapFunc,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1.0,
              color: Color(0xFFBDBDBD),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.expanded ? '접기' : '더보기',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF757575),
              ),
            ),
            Icon(widget.expanded ? Icons.expand_less : Icons.expand_more),
          ],
        ),
      ),
    );
  }
}
