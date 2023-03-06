import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:gap/gap.dart';

class EventButton extends StatelessWidget {
  final Function onPressed;
  final String image;
  final String title;
  final String date;
  final String time;

  const EventButton({
    super.key,
    required this.onPressed,
    required this.image,
    required this.title,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return ElevatedButton(
        onPressed: () => onPressed(),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(white),
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
          padding: EdgeInsets.symmetric(
              horizontal: spacing * 1.3, vertical: spacing * 3),
          child: Container(
            width: FontSize.blockSizeHorizontal! * 75,
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: FontSize.blockSizeHorizontal! * 22,
                  height: FontSize.blockSizeHorizontal! * 22,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius / 2),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ),
                Gap(spacing * 2.5),
                SizedBox(
                  width: FontSize.blockSizeHorizontal! * 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: FontSize.blockSizeHorizontal! * 4)),
                      Gap(spacing),
                      Text(date,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3)),
                      Text(time,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3)),
                      Gap(spacing),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
