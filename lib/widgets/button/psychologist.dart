import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/main/main_app.dart';
import 'package:lucely_app/widgets/button/counseling_button.dart';
import 'package:lucely_app/widgets/card/counseling_card.dart';
import 'package:lucely_app/widgets/dialog/success_dialog.dart';
import 'package:lucely_app/widgets/input/rounded_search_input.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Psychologist extends StatelessWidget {
  final String name;
  final String image;
  final Function onPressed;
  const Psychologist(
      {super.key,
      required this.name,
      required this.image,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed(),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(white),
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
            vertical: spacing * 2.2, horizontal: spacing * 0),
        child: Container(
            // width: 315,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 160.0,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Gap(spacing * 2),
                SizedBox(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(name,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 16)),
                      Text("SIPP: 13324233",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal, fontSize: 11)),
                      Gap(spacing * 1),
                      SizedBox(
                        width: 200,
                        child: Text(
                            "Personality, Anxiety, Traumatic, Self Development, +3 others",
                            maxLines: 3,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11,
                                    color: darkGrey)),
                      ),
                      Gap(spacing * 1),
                      RatingBar.builder(
                        ignoreGestures: true,
                        itemSize: 16,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Gap(spacing * 1),
                      Text("Nearest Schedule",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 12)),
                      Gap(spacing * 0.2),
                      Text("Sunday, 7:00 pm",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 11,
                                  color: darkGrey)),
                      Gap(spacing * 1),
                      ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(height: 30),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return columbiaBlue;
                                }
                                return blue;
                              },
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(radius * 2),
                              ),
                            ),
                          ),
                          child: Center(
                              child: Text("Pilih",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 11,
                                          color: white))),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
