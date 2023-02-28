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
import 'package:lucely_app/data/mentor_model.dart';
import 'package:lucely_app/data/psychologist_model.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/card/psychologist_review_card.dart';

class MentorPage extends StatefulWidget {
  final MentorModel mentorModel;
  const MentorPage({super.key, required this.mentorModel});

  @override
  State<StatefulWidget> createState() => _MentorPageState();
}

class _MentorPageState extends State<MentorPage> {
  @override
  Widget build(BuildContext context) {
    void openModal() {
      showModalBottomSheet(
          enableDrag: true,
          isDismissible: true,
          backgroundColor: white,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(radius * 2))),
          context: context,
          builder: (context) => Container(
                padding: EdgeInsets.all(spacing * 2),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 80,
                      height: 5,
                      decoration: BoxDecoration(
                          color: lightGrey,
                          borderRadius: BorderRadius.circular(radius * 5)),
                    ),
                    Gap(spacing * 5),
                    Text("Which option suits best for you?",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 20)),
                    Gap(spacing * 3),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: spacing * 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 2),
                                    side: BorderSide(
                                      width: 1,
                                      color: lightGrey,
                                    ),
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 120,
                                height: 140,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // width: 80,
                                          // height: 5,
                                          decoration: BoxDecoration(
                                              color: pink,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      radius * 10)),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: spacing * 2,
                                                vertical: spacing),
                                            child: Center(
                                              child: Text("Starter Option",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .copyWith(
                                                          color: white,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 11)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(spacing),
                                    Text("Rp150.000",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15)),
                                    Gap(spacing),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("\u2022",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                )),
                                        Text(" 1 hour long session",
                                            maxLines: 3,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 11,
                                                )),
                                      ],
                                    ),
                                    Gap(spacing),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("\u2022",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                )),
                                        Text(" Voice Call Available",
                                            maxLines: 3,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 11,
                                                )),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 2),
                                    side: const BorderSide(
                                      width: 1,
                                      color: lightGrey,
                                    ),
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 120,
                                height: 140,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          // width: 80,
                                          // height: 5,
                                          decoration: BoxDecoration(
                                              color: yellow,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      radius * 10)),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: spacing * 2,
                                                vertical: spacing),
                                            child: Center(
                                              child: Text("Premium Option",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .copyWith(
                                                          color: white,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 11)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(spacing),
                                    Text("Rp250.000",
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 15)),
                                    Gap(spacing),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("\u2022",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                )),
                                        Text(" 2 hours long session",
                                            maxLines: 3,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 11,
                                                )),
                                      ],
                                    ),
                                    Gap(spacing),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("\u2022",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 14,
                                                )),
                                        Text(" Video Call Available",
                                            maxLines: 3,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 11,
                                                )),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    ),
                    Gap(spacing * 4)
                  ],
                ),
              ));
    }

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
        title: Text("Mentor Detail",
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
                          image: AssetImage(widget.mentorModel.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(spacing * 2),
                    Text(widget.mentorModel.name,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 17)),
                    Gap(spacing * 1),
                    SizedBox(
                      width: 210,
                      child: Text(
                          "Career Path, Self Development, Education, Interview, Productivity, +3 others",
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
                    Text("CEO Lucely App",
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
                    Text("Profile ${widget.mentorModel.name}",
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
                        "${widget.mentorModel.name} adalah seorang lulusan Stanford. Beliau passionate di bidang finance dan management. Beliau percaya bahwa setiap orang memiliki kesempatan yang sama, dan dalam merencanakan karir memerlukan perencanaan yang matang.",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                height: 1.5)),
                    Gap(spacing * 4),
                    Text("Nearest Schedule",
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
                        Text(" Oct 8, 2023 | 7:00 pm",
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
                        Text(" Oct 9, 2023 | 7:00 pm",
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
                    Text("Review ${widget.mentorModel.name}",
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
                      onPressed: () => openModal(),
                      title: "Choose Mentor",
                      type: ButtonType.primary,
                      isLoading: false)
                ],
              ),
            ),
          )),
    );
  }
}
