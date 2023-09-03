import 'package:flutter/material.dart';

class Header extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  const Header({
    super.key,
    required this.title,
  });

  @override
  State<Header> createState() => _HeaderState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      shape: const Border(
        bottom: BorderSide(
          color: Color(0xFFBDBDBD),
          width: 1,
        ),
      ),
      title: Text(
        widget.title,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
