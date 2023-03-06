import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/luceguide_model.dart';
import 'package:lucely_app/pages/account/about_page.dart';
import 'package:lucely_app/pages/counseling/choose_mentor.dart';
import 'package:lucely_app/pages/luceguide/luceguide_session1.dart';
import 'package:lucely_app/pages/luceguide/luceguide_session2.dart';
import 'package:lucely_app/pages/luceguide/luceguide_session3.dart';
import 'package:lucely_app/pages/luceguide/luceguide_session4.dart';
import 'package:lucely_app/pages/luceguide/luceguide_session5.dart';
import 'package:lucely_app/widgets/button/luceguide_session.dart';

class LuceGuidePage extends StatelessWidget {
  final LuceGuideModel luceGuideModel;
  const LuceGuidePage({super.key, required this.luceGuideModel});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: luceGuideModel.background,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Iconify(MaterialSymbols.arrow_back_ios_new_rounded)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: luceGuideModel.background,
              child: Padding(
                padding: EdgeInsets.all(spacing * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      width: FontSize.blockSizeHorizontal! * 50,
                      child: Text(luceGuideModel.title,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: FontSize.blockSizeHorizontal! * 7)),
                    ),
                    Gap(spacing),
                    SizedBox(
                      width: FontSize.blockSizeHorizontal! * 50,
                      height: FontSize.blockSizeVertical! * 30,
                      child: Image.asset(luceGuideModel.imageUrl),
                    ),
                    Gap(spacing),
                    SizedBox(
                      width: FontSize.blockSizeHorizontal! * 70,
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                          textAlign: TextAlign.justify,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      FontSize.blockSizeHorizontal! * 3.5)),
                    ),
                    Gap(spacing * 3),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(spacing * 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                      onPressed: () => Get.to(() => LuceGuideSession1(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500)),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return columbiaBlue;
                            }
                            return white;
                          },
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                            side: const BorderSide(
                              width: 1,
                              color: lightGrey,
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: spacing, vertical: spacing * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Session 1",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                            Gap(spacing),
                            Text("Introduction",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 5)),
                            Gap(spacing),
                            Text("5 minutes",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                          ],
                        ),
                      )),
                  Gap(spacing * 3),
                  ElevatedButton(
                      onPressed: () => Get.to(() => LuceGuideSession2(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500)),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return columbiaBlue;
                            }
                            return white;
                          },
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                            side: const BorderSide(
                              width: 1,
                              color: lightGrey,
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: spacing, vertical: spacing * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Session 2",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                            Gap(spacing),
                            Text("Lorem Ipsum",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 5)),
                            Gap(spacing),
                            Text("5 minutes",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                          ],
                        ),
                      )),
                  Gap(spacing * 3),
                  ElevatedButton(
                      onPressed: () => Get.to(() => LuceGuideSession3(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500)),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return columbiaBlue;
                            }
                            return white;
                          },
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                            side: const BorderSide(
                              width: 1,
                              color: lightGrey,
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: spacing, vertical: spacing * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Session 3",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                            Gap(spacing),
                            Text("Lorem Ipsum",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 5)),
                            Gap(spacing),
                            Text("5 minutes",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                          ],
                        ),
                      )),
                  Gap(spacing * 3),
                  ElevatedButton(
                      onPressed: () => Get.to(() => LuceGuideSession4(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500)),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return columbiaBlue;
                            }
                            return white;
                          },
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                            side: const BorderSide(
                              width: 1,
                              color: lightGrey,
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: spacing, vertical: spacing * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Session 4",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                            Gap(spacing),
                            Text("Lorem Ipsum",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 5)),
                            Gap(spacing),
                            Text("5 minutes",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                          ],
                        ),
                      )),
                  Gap(spacing * 3),
                  ElevatedButton(
                      onPressed: () => Get.to(() => LuceGuideSession5(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500)),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return columbiaBlue;
                            }
                            return white;
                          },
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(radius),
                            side: const BorderSide(
                              width: 1,
                              color: lightGrey,
                            ),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: spacing, vertical: spacing * 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text("Session 5",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                            Gap(spacing),
                            Text("Closing",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 5)),
                            Gap(spacing),
                            Text("5 minutes",
                                maxLines: 3,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize:
                                            FontSize.blockSizeHorizontal! * 3)),
                          ],
                        ),
                      )),
                  Gap(spacing * 3),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
