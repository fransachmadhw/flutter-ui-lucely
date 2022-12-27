import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lucely_app/common/color_palettes.dart';
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
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        width: 315,
        decoration: BoxDecoration(
            color: background,
            // border:
            //     Border.all(width: 0, color: lightGrey),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(spacing * 1.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 17)),
                  Gap(spacing),
                  Text(total,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 12)),
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
