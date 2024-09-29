import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.border,
    required this.onPressed,
    required this.width,
    required this.btnColor,
    required this.text,
    this.isLoad = false,
  });
  final void Function()? onPressed;
  final double width;
  final Color btnColor;
  final String text;
  final BoxBorder? border;
  final bool isLoad;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: border,
        borderRadius: BorderRadius.circular(15),
        color: btnColor,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: isLoad
            ? const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ))
            : Text(text,
                style: const TextStyle(fontSize: 25, color: Colors.white)),
      ),
    );
  }
}
