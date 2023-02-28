import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';

class FeatureButton extends StatelessWidget {
  final Function onPressed;
  final String image;
  final String label;
  const FeatureButton(
      {super.key,
      required this.onPressed,
      required this.image,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () => onPressed(),
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
                padding: MaterialStateProperty.all(
                  const EdgeInsets.all(spacing * 1.3),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(
                      color: blue,
                      width: 1,
                    ),
                  ),
                ),
              ),
              child: Center(
                child: Image(width: 40, height: 40, image: AssetImage(image)),
              )),
          Gap(spacing),
          Text(label,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 11))
        ],
      ),
    );
  }
}
