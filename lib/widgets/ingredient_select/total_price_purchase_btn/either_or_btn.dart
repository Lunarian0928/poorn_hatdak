import 'package:flutter/material.dart';
import '../../../screens/order_or_purchase_screen.dart';

class EitherOrBtn extends StatelessWidget {
  final int styleNum;
  final int totalPrice;
  const EitherOrBtn({
    super.key,
    required this.styleNum,
    this.totalPrice = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 48) / 2,
      child: ElevatedButton(
        onPressed: (styleNum == 1)
            ? () {}
            : () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        OrderOrPurchaseScreen(totalPrice: totalPrice),
                  ),
                );
              },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
          ),
          backgroundColor:
              (styleNum == 1) ? Colors.white : Theme.of(context).primaryColor,
          foregroundColor:
              (styleNum == 1) ? Theme.of(context).primaryColor : Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1, // thickness
              color: Theme.of(context).primaryColor, // color
            ),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        child: (styleNum == 1) ? const Text('장바구니') : const Text('바로구매'),
      ),
    );
  }
}
