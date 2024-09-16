import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressedIcon,
  });
  final String text;
  final Icon icon;
  final void Function() onPressedIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: onPressedIcon,
            icon: icon,
            iconSize: 30,
          )
        ],
      ),
    );
  }
}
