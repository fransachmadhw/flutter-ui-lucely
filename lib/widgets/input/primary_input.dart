import 'package:flutter/material.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';

class PrimaryInput extends StatelessWidget {
  final String label;
  final String? placeholder;
  final bool? isPassword;
  final TextInputType? textInputType;

  const PrimaryInput(
      {super.key,
      required this.label,
      this.placeholder,
      this.isPassword,
      this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: blue,
        labelText: label,
        hintText: placeholder ?? "",
        labelStyle: const TextStyle(color: blue),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: blue, width: 2),
          borderRadius: BorderRadius.circular(radius),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      obscureText: isPassword ?? false,
      keyboardType: textInputType ?? TextInputType.text,
      textInputAction: TextInputAction.done,
    );
  }
}
