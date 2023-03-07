import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';

class Bookluce extends StatelessWidget {
  final Function onPressed;
  final String image;
  final String title;
  final String author;
  const Bookluce(
      {super.key,
      required this.onPressed,
      required this.image,
      required this.title,
      required this.author});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return InkWell(
        onTap: () => onPressed(),
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                width: FontSize.blockSizeHorizontal! * 27,
                height: FontSize.blockSizeVertical! * 22,
                child: Image.asset(image),
              ),
              Gap(spacing),
              Text(title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: FontSize.blockSizeHorizontal! * 3.5)),
              Gap(spacing - 6),
              Text(author,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.blockSizeHorizontal! * 2.5))
            ],
          ),
        ));
  }
}
