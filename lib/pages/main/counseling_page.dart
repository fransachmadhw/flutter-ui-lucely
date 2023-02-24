import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/main/choose_mentor.dart';
import 'package:lucely_app/pages/main/choose_psychologist.dart';
import 'package:lucely_app/pages/main/main_app.dart';
import 'package:lucely_app/widgets/button/counseling_button.dart';
import 'package:lucely_app/widgets/card/counseling_card.dart';
import 'package:lucely_app/widgets/dialog/success_dialog.dart';

class CounselingPage extends StatelessWidget {
  const CounselingPage({super.key});

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    void openPsikologDialog() {
      showModalBottomSheet(
          enableDrag: true,
          isDismissible: true,
          backgroundColor: white,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(radius * 2))),
          context: context,
          builder: (context) => Container(
                // color: Colors.white,
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
                    Gap(spacing * 3),
                    Text("Choose counseling topic",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 16)),
                    Gap(spacing * 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Anxiety",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Depression",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Lonely",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Overthinking",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Traumatic",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Social",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Personality",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Family",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Emotional",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(
                                  () => const ChoosePsychologist(),
                                  transition: Transition.rightToLeft,
                                  duration: const Duration(milliseconds: 700)),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.pressed)) {
                                      return columbiaBlue;
                                    }
                                    return white;
                                  },
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Romantic",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 4)
                  ],
                ),
              ));
    }

    ;

    void openMentorDialog() {
      showModalBottomSheet(
          enableDrag: true,
          isDismissible: true,
          backgroundColor: white,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(top: Radius.circular(radius * 2))),
          context: context,
          builder: (context) => Container(
                // color: Colors.white,
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
                    Gap(spacing * 3),
                    Text("Choose counseling topic",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 16)),
                    Gap(spacing * 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(ChooseMentor()),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Career Path",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(ChooseMentor()),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Self Development",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(ChooseMentor()),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Education",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(ChooseMentor()),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Interview",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(ChooseMentor()),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Productivity",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(ChooseMentor()),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Life Management",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(ChooseMentor()),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Impostor Syndrome",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                        ConstrainedBox(
                          constraints: const BoxConstraints.tightFor(
                              width: 123, height: 40),
                          child: ElevatedButton(
                              onPressed: () => Get.to(ChooseMentor()),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                    MaterialStateProperty.all(white),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(radius * 1),
                                    side: const BorderSide(
                                      width: 1,
                                      color: blue,
                                    ),
                                  ),
                                ),
                              ),
                              child: Text("Skills",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12))),
                        ),
                      ],
                    ),
                    Gap(spacing * 4)
                  ],
                ),
              ));
    }

    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          backgroundColor: white,
          appBar: AppBar(
            shape: Border(bottom: BorderSide(color: veryLightGrey, width: 1)),
            backgroundColor: white,
            elevation: 0,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text("Choose the right option for you",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(spacing * 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Find the right expert",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
                  Text("Discuss immediately with the experts",
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal, fontSize: 14)),
                  Gap(spacing * 3),
                  ElevatedButton(
                    onPressed: () => openPsikologDialog(),
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
                          vertical: spacing * 3, horizontal: spacing * 1),
                      child: Container(
                          // width: 315,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/psikolog.png",
                                width: 100,
                                // height: 90,
                              ),
                              SizedBox(
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Psikolog",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17)),
                                    Gap(spacing * 1),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                          "Your mental health is your priority",
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
                  ),
                  Gap(spacing * 2),
                  ElevatedButton(
                    onPressed: () => openMentorDialog(),
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
                          vertical: spacing * 3, horizontal: spacing * 1),
                      child: Container(
                          // width: 315,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/mentor.png",
                                width: 100,
                                // height: 90,
                              ),
                              SizedBox(
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Mentor",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17)),
                                    Gap(spacing * 1),
                                    SizedBox(
                                      width: 200,
                                      child: Text(
                                          "Be the best of you and reach your dream",
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
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
