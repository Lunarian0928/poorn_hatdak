import 'package:flutter/material.dart';

class ItemDetailHeader extends StatelessWidget {
  final String title, subTitle;
  final bool expandMoreBtn;
  final double horiziontalPadding;
  final double verticalPadding;

  const ItemDetailHeader({
    super.key,
    required this.title,
    this.subTitle = '',
    this.expandMoreBtn = false,
    this.horiziontalPadding = 0.0,
    this.verticalPadding = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horiziontalPadding,
        vertical: verticalPadding,
      ),
      child: Row(
        children: [
          Text.rich(
            TextSpan(
              text: '$title ',
              style: Theme.of(context).textTheme.titleMedium,
              children: [
                TextSpan(
                  text: subTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
