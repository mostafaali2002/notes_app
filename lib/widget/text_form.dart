import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      this.keyboardType,
      this.preicon,
      this.sufficon,
      this.validator,
      this.onSaved,
      this.hint,
      this.obscureText = false,
      this.maxLines,
      this.onChanged});

  final bool obscureText;
  final String? hint;
  final TextInputType? keyboardType;
  final Function(String?)? onSaved;
  final Icon? preicon;
  final IconButton? sufficon;
  final int? maxLines;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: maxLines,
      onSaved: onSaved,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        suffixIcon: sufficon,
        prefixIcon: preicon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
