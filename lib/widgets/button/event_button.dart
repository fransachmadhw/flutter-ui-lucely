import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:lucely_app/common/color_palettes.dart';
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
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        width: 315,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(width: 1, color: lightGrey),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(spacing * 1.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 74,
                height: 74,
                child: Image.asset(
                  image,
                  // width: 90,
                  // height: 90,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 13)),
                  Gap(spacing),
                  Text(date,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 10)),
                  Text(time,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 10)),
                  Gap(spacing),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
