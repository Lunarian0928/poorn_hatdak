import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: SizedBox(
        height: 40,
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFF757575).withOpacity(0.1),
            labelText: '단짠단짠 간장찜닭',
            suffixIcon: Icon(
              Icons.search,
              color: const Color(0xFF212121).withOpacity(0.87),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            contentPadding: const EdgeInsets.all(12),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xFF757575).withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(90),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: const Color(0xFF757575).withOpacity(0.3),
              ),
              borderRadius: BorderRadius.circular(90),
            ),
          ),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
