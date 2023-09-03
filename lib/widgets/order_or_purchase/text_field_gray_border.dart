import 'package:flutter/material.dart';

class TextFieldGrayBorder extends StatelessWidget {
  final bool enabled;
  final String hintText;

  const TextFieldGrayBorder({
    super.key,
    this.enabled = true,
    this.hintText = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        isDense: true,
        enabled: enabled,
        contentPadding: const EdgeInsets.all(12.0),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFF757575),
        ),
        filled: true,
        fillColor:
            (enabled) ? Colors.white : const Color(0xFF757575).withOpacity(0.1),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xFF757575).withOpacity(0.4),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
