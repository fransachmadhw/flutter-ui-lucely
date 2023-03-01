import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:gap/gap.dart';

class LuceGuideButton extends StatelessWidget {
  final Function onPressed;
  final String image;
  final String title;
  final String total;
  final Color background;

  const LuceGuideButton({
    super.key,
    required this.onPressed,
    required this.image,
    required this.title,
    required this.total,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStatePropertyAll(background),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
      onPressed: () => onPressed(),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: spacing * 1.3, vertical: spacing * 3),
        child: Container(
          width: FontSize.blockSizeHorizontal! * 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: FontSize.blockSizeHorizontal! * 4)),
                  Gap(spacing),
                  Text(total,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: FontSize.blockSizeHorizontal! * 3)),
                  Gap(spacing),
                ],
              ),
              SizedBox(
                width: 85,
                height: 64,
                child: Image.asset(
                  image,
                  // width: 90,
                  // height: 90,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
