import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';

class CounselingCard extends StatelessWidget {
  final String label;
  final String desc;
  final String image;
  final Function onPressed;
  const CounselingCard(
      {super.key,
      required this.label,
      required this.desc,
      required this.image,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed(),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius * 2),
            side: const BorderSide(
              width: 1,
              color: blue,
            ),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: spacing * 3, horizontal: spacing * 1),
        child: Container(
            // width: 315,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  width: 100,
                  // height: 90,
                ),
                SizedBox(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(label,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 17)),
                      Gap(spacing * 1),
                      SizedBox(
                        width: 200,
                        child: Text(desc,
                            maxLines: 3,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13,
                                    color: darkGrey)),
                      ),
                      Gap(spacing * 2),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
