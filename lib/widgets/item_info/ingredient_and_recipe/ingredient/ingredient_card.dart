import 'package:flutter/material.dart';

class IngredientCard extends StatefulWidget {
  final String imgName, name, origin;
  final int price;

  const IngredientCard({
    super.key,
    required this.imgName,
    required this.name,
    required this.origin,
    required this.price,
  });

  @override
  State<IngredientCard> createState() => _IngredientCardState();
}

class _IngredientCardState extends State<IngredientCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          (widget.price == 0)
              ? Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF795548),
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.name,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF795548),
                      ),
                    ),
                    Text(
                      '+${widget.price}원',
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF795548),
                      ),
                    ),
                  ],
                ),
          const SizedBox(
            height: 16.0,
          ),
          Container(
            width: 120.0,
            height: 120.0,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Image.asset(
              'assets/img/ingredients/${widget.imgName}.jpeg',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            widget.origin,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 12.0,
              color: Color(0xFF795548),
            ),
          )
        ],
      ),
    );
  }
}
