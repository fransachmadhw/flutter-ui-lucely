import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/psychologist_model.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/card/psychologist_review_card.dart';

class PsychologistPage extends StatelessWidget {
  final PsychologistModel psychologistModel;

  const PsychologistPage({super.key, required this.psychologistModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: veryLightGrey, width: 1)),
        backgroundColor: white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Iconify(MaterialSymbols.arrow_back_ios_new_rounded)),
        centerTitle: true,
        title: Text("Detail Psikolog",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: spacing * 3, right: spacing * 3, top: spacing * 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(psychologistModel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(spacing * 2),
                    Text(psychologistModel.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 17)),
                    Gap(spacing * 1),
                    SizedBox(
                      width: 210,
                      child: Text(
                          "Kepribadian, Kecemasan, Trauma, Pengembangan Diri, +3 lainnya",
                          maxLines: 5,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                  color: darkGrey)),
                    ),
                    Gap(spacing * 1),
                    Text("SIPP: 13324233",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.normal, fontSize: 13)),
                    Gap(spacing * 3),
                    Container(
                      // width: 200,
                      height: 1,
                      decoration: BoxDecoration(color: lightGrey),
                    ),
                    Gap(spacing * 3),
                  ],
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profil ${psychologistModel.name}",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 17)),
                    Gap(spacing),
                    Container(
                      height: 8,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: blue),
                    ),
                    Gap(spacing),
                    Text(
                        "${psychologistModel.name} adalah seorang psikolog klinis lulusan Harvard. Beliau memiliki ketertarikan dalam menanggani kasus seperti kecemasan, depresi, pengembangan diri, dan keluarga. Beliau percaya bahwa mengontrol untuk selalu berpikiran positif mampu menjalani hidup dengan baik.",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                height: 1.5)),
                    Gap(spacing * 4),
                    Text("Jadwal Terdekat",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 17)),
                    Gap(spacing),
                    Container(
                      height: 8,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: blue),
                    ),
                    Gap(spacing),
                    Row(
                      children: [
                        Text("\u2022",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                )),
                        Text("Sabtu, 8 0kt 2023 | 19:00 WIB",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                )),
                      ],
                    ),
                    Row(
                      children: [
                        Text("\u2022",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                )),
                        Text("Minggu, 9 0kt 2023 | 19:00 WIB",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                )),
                      ],
                    ),
                    Gap(spacing * 4),
                    Text("Review Psikolog ${psychologistModel.name}",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 17)),
                    Gap(spacing),
                    Container(
                      height: 8,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: blue),
                    ),
                    Gap(spacing * 2),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 195,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              children: [
                PsychologistReviewCard(),
                PsychologistReviewCard(),
                PsychologistReviewCard(),
                Gap(spacing * 3)
              ],
            ),
          ),
          SizedBox(
            height: spacing * 3,
          )
        ],
      ))),
      bottomNavigationBar: Container(
          height: 90,
          decoration: BoxDecoration(
              color: white,
              border: Border(top: BorderSide(color: lightGrey, width: 1))),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(spacing * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                      onPressed: () {},
                      title: "Pilih Konselor",
                      type: ButtonType.primary,
                      isLoading: false)
                ],
              ),
            ),
          )),
    );
  }
}
