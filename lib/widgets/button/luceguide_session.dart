import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';

class LuceGuideSession extends StatelessWidget {
  final String title;
  final Function onPressed;
  const LuceGuideSession(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return ElevatedButton(
        onPressed: onPressed(),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return columbiaBlue;
              }
              return white;
            },
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
              side: const BorderSide(
                width: 1,
                color: lightGrey,
              ),
            ),
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: spacing, vertical: spacing * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(title,
                  maxLines: 3,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.blockSizeHorizontal! * 3)),
              Gap(spacing),
              Text("Lorem Ipsum",
                  maxLines: 3,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.blockSizeHorizontal! * 5)),
              Gap(spacing),
              Text("5 minutes",
                  maxLines: 3,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.blockSizeHorizontal! * 3)),
            ],
          ),
        ));
  }
}
