import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';

class RoundedSearchInput extends StatelessWidget {
  final String? placeholder;
  final bool? isPassword;
  final TextInputType? textInputType;

  const RoundedSearchInput(
      {super.key, this.placeholder, this.isPassword, this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: blue,
          hintText: placeholder ?? "",
          labelStyle: const TextStyle(color: blue),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Iconify(
              Uil.search,
              color: darkGrey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: blue, width: 1),
            borderRadius: BorderRadius.circular(radius * 5),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius * 5),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: spacing)),
      style: Theme.of(context).textTheme.bodyMedium,
      obscureText: isPassword ?? false,
      keyboardType: textInputType ?? TextInputType.text,
      textInputAction: TextInputAction.done,
    );
  }
}
