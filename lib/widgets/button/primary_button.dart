import 'package:flutter/material.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';

enum ButtonType { primary, secondary, tertiary }

class PrimaryButton extends StatelessWidget {
  final String title;
  final Enum type;
  final Function onPressed;
  final bool isLoading;

  const PrimaryButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.type,
      required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () =>
          !isLoading ? onPressed() : {}, // prevent click when state is loading
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return type == ButtonType.primary ? columbiaBlue : columbiaBlue;
            }
            return type == ButtonType.primary ? blue : white;
          },
        ),
        // MaterialStateProperty.all(
        //   type == ButtonType.primary ? blue : white,
        // ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: spacing * 2.2),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(
              color: type == ButtonType.secondary ? blue : white,
              width: 1,
            ),
          ),
        ),
      ),
      child: isLoading
          ? const SizedBox(
              width: spacing * 3,
              height: spacing * 3,
              child: CircularProgressIndicator(color: white),
            )
          : Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: type == ButtonType.primary ? white : blue,
                    fontWeight: FontWeight.w500,
                  ),
            ),
    );
  }
}
