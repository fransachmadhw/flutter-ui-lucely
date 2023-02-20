import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';

class PsychologistReviewCard extends StatelessWidget {
  const PsychologistReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: spacing * 3),
      width: 275,
      height: 195,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: lightGrey)),
      child: Padding(
        padding: EdgeInsets.all(spacing * 3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(width: 1, color: blue)),
                child: Padding(
                  padding: EdgeInsets.all(spacing),
                  child: Center(
                      child: Text("AL",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13))),
                )),
            Gap(spacing * 1),
            RatingBar.builder(
              ignoreGestures: true,
              itemSize: 12,
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
            Gap(spacing),
            Text('"Sangat friendly dan memahami apa yang dirasakan"',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 13)),
            Gap(spacing),
            Text(
                'Konseling dilakukan via gmeet, psikolog dilza membantu saya dengan memberikan beberapa metode.',
                textAlign: TextAlign.center,
                maxLines: 4,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.normal, fontSize: 12)),
          ],
        ),
      ),
    );
  }
}
