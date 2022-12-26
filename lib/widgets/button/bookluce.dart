import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
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
    return InkWell(
      onTap: () => onPressed(),
      child: Column(
        children: [
          Container(
            width: 90,
            height: 144,
            child: Image.asset(image),
          ),
          Gap(spacing),
          Text(title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 12)),
          Text(author,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.normal, fontSize: 9))
        ],
      ),
    );
  }
}
