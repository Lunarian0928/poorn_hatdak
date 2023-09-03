import 'package:flutter/material.dart';

class SaleHeader extends StatelessWidget {
  final String title;
  final bool expandMoreBtn;
  final double verticalPadding;
  const SaleHeader({
    super.key,
    required this.title,
    required this.expandMoreBtn,
    required this.verticalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: verticalPadding,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
