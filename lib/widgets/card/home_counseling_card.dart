import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';

class HomeCounselingCard extends StatelessWidget {
  final String title;
  final String target;
  final Function onPressed;
  final String image;

  const HomeCounselingCard({
    super.key,
    required this.title,
    required this.target,
    required this.onPressed,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      decoration: BoxDecoration(
          color: aliceBlue, borderRadius: BorderRadius.circular(10)),
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
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 14)),
                SizedBox(
                  width: 175,
                  child: Text("Tell your problem with ${target}",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 10)),
                ),
                Gap(spacing),
                ElevatedButton(
                  onPressed: onPressed(),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return columbiaBlue;
                        }
                        return blue;
                      },
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                          vertical: spacing - 2, horizontal: spacing * 2),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(radius * 2),
                      ),
                    ),
                  ),
                  child: Center(
                      child: Text("Counseling with ${target}",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11,
                                  color: white))),
                )
              ],
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Image.asset(
                image,
              ),
            )
          ],
        ),
      ),
    );
  }
}
