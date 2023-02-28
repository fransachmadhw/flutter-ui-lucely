import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/controller/pages/authentication/splash_screen2_controller.dart';
import 'package:lucely_app/pages/main/choose_mentor.dart';
import 'package:lucely_app/pages/main/choose_psychologist.dart';
import 'package:lucely_app/pages/main/luceguide_page.dart';
import 'package:lucely_app/pages/main/notification_page.dart';
import 'package:lucely_app/widgets/button/bookluce.dart';
import 'package:lucely_app/widgets/button/event_button.dart';
import 'package:lucely_app/widgets/button/feature_button.dart';
import 'package:lucely_app/widgets/button/luceguide.dart';
import 'package:sizer/sizer.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/controller/pages/main/main_app_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // final pageController = Get.put(SplashScreen2Controller());

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    MainAppController pageController = Get.put(MainAppController());
    FontSize().init(context);

    final List<String> imgList = [
      'assets/images/psikolog.png',
      'assets/images/mentor.png',
    ];

    return WillPopScope(
        onWillPop: _onWillPop,
        child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/home-bg.png"),
                  fit: BoxFit.cover)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
                child: SingleChildScrollView(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(spacing * 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () => Get.to(
                                    () => NotificationPage(),
                                    transition: Transition.rightToLeft,
                                    duration:
                                        const Duration(milliseconds: 500)),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: Colors.transparent),
                                child: Center(
                                  child: Iconify(Bi.bell),
                                )),
                          ],
                        ),
                        Text("Hi, Zadev",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize:
                                        FontSize.blockSizeHorizontal! * 6.5)),
                        Gap(spacing * 1),
                        Text(
                            "Tell me what's in your mind and your heart,\nfind the way out of your problem.",
                            maxLines: 3,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize:
                                        FontSize.blockSizeHorizontal! * 3.5))
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: FontSize.blockSizeVertical! * 24),
                      // height: 250,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(radius * 4),
                            topRight: Radius.circular(radius * 4)),
                      ),
                      child: Column(
                        children: [
                          Gap(spacing * 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FeatureButton(
                                onPressed: () =>
                                    {pageController.setPageIndex(1)},
                                image: "assets/images/Counseling.png",
                                label: "Counseling",
                              ),
                              FeatureButton(
                                onPressed: () {},
                                image: "assets/images/Events.png",
                                label: "Event",
                              ),
                              FeatureButton(
                                onPressed: () => Get.to(() => LuceGuidePage(),
                                    transition: Transition.rightToLeft,
                                    duration:
                                        const Duration(milliseconds: 500)),
                                image: "assets/images/LuceGuide.png",
                                label: "LuceGuide",
                              ),
                              FeatureButton(
                                onPressed: () {},
                                image: "assets/images/Bookluce.png",
                                label: "Bookluce",
                              )
                            ],
                          ),
                          Gap(spacing * 3),
                          SizedBox(
                            height: 145,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Gap(spacing * 3),
                                Container(
                                  width: 315,
                                  decoration: BoxDecoration(
                                      color: aliceBlue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: EdgeInsets.all(spacing * 1.3),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Improve\nyour mental health",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 14)),
                                            SizedBox(
                                              width: 200,
                                              child: Text(
                                                  "Tell your problem with psychologists",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 10)),
                                            ),
                                            Gap(spacing),
                                            ElevatedButton(
                                              onPressed: () => Get.to(
                                                  () => ChoosePsychologist(),
                                                  transition:
                                                      Transition.rightToLeft,
                                                  duration: const Duration(
                                                      milliseconds: 500)),
                                              style: ButtonStyle(
                                                elevation:
                                                    MaterialStateProperty.all(
                                                        0),
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .resolveWith<Color>(
                                                  (Set<MaterialState> states) {
                                                    if (states.contains(
                                                        MaterialState
                                                            .pressed)) {
                                                      return columbiaBlue;
                                                    }
                                                    return blue;
                                                  },
                                                ),
                                                padding:
                                                    MaterialStateProperty.all(
                                                  const EdgeInsets.symmetric(
                                                      vertical: spacing - 2,
                                                      horizontal: spacing * 2),
                                                ),
                                                shape:
                                                    MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            radius * 2),
                                                  ),
                                                ),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                      "Counseling with Psychologists",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 11,
                                                              color: white))),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 80,
                                          height: 80,
                                          child: Image.asset(
                                            'assets/images/psikolog2.png',
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Gap(spacing * 2),
                                Container(
                                  width: 315,
                                  decoration: BoxDecoration(
                                      color: aliceBlue,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: EdgeInsets.all(spacing * 1.3),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                "Upgrade yourself to be\nthe best of you",
                                                maxLines: 2,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleMedium!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 14)),
                                            SizedBox(
                                              width: 175,
                                              child: Text(
                                                  "Tell your problem with mentors",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          fontSize: 10)),
                                            ),
                                            Gap(spacing),
                                            ElevatedButton(
                                              onPressed: () => Get.to(
                                                  () => ChooseMentor(),
                                                  transition:
                                                      Transition.rightToLeft,
                                                  duration: const Duration(
                                                      milliseconds: 500)),
                                              style: ButtonStyle(
                                                elevation:
                                                    MaterialStateProperty.all(
                                                        0),
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .resolveWith<Color>(
                                                  (Set<MaterialState> states) {
                                                    if (states.contains(
                                                        MaterialState
                                                            .pressed)) {
                                                      return columbiaBlue;
                                                    }
                                                    return blue;
                                                  },
                                                ),
                                                padding:
                                                    MaterialStateProperty.all(
                                                  const EdgeInsets.symmetric(
                                                      vertical: spacing - 2,
                                                      horizontal: spacing * 2),
                                                ),
                                                shape:
                                                    MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            radius * 2),
                                                  ),
                                                ),
                                              ),
                                              child: Center(
                                                  child: Text(
                                                      "Counseling with Mentors",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleMedium!
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 11,
                                                              color: white))),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 80,
                                          height: 80,
                                          child: Image.asset(
                                            'assets/images/mentor2.png',
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Gap(spacing * 3),
                              ],
                            ),
                          ),
                          Gap(spacing * 1),
                          Padding(
                            padding: EdgeInsets.all(spacing * 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 220,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Latest Bookluces",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: FontSize
                                                          .blockSizeHorizontal! *
                                                      4.2)),
                                      Text(
                                          "Read the summary of best-selling books",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: FontSize
                                                          .blockSizeHorizontal! *
                                                      3))
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text("See more",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: FontSize
                                                      .blockSizeHorizontal! *
                                                  3)),
                                )
                              ],
                            ),
                          ),
                          Gap(spacing * 0),
                          SizedBox(
                            height: FontSize.blockSizeVertical! * 30,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Gap(spacing * 3),
                                Bookluce(
                                    onPressed: () {},
                                    image: "assets/images/Bookluce1.png",
                                    title: "Good Vibes,\nGood Life",
                                    author: "Vex King"),
                                Gap(spacing * 2),
                                Bookluce(
                                    onPressed: () {},
                                    image: "assets/images/Bookluce2.png",
                                    title: "The Art of\nThinking Clearly",
                                    author: "Rolf Dobelli"),
                                Gap(spacing * 2),
                                Bookluce(
                                    onPressed: () {},
                                    image: "assets/images/Bookluce3.png",
                                    title: "Dear Tomorrow",
                                    author: "Maudy Ayunda"),
                                Gap(spacing * 2),
                                Bookluce(
                                    onPressed: () {},
                                    image: "assets/images/Bookluce4.png",
                                    title: "Eat That Frog",
                                    author: "Brian Tracy"),
                                Gap(spacing * 3),
                              ],
                            ),
                          ),
                          Gap(spacing * 1),
                          Padding(
                            padding: EdgeInsets.all(spacing * 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nearest Events",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: FontSize
                                                        .blockSizeHorizontal! *
                                                    4.2)),
                                    Text("Discuss together with the experts",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.normal,
                                                fontSize: FontSize
                                                        .blockSizeHorizontal! *
                                                    3))
                                  ],
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text("See more",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: FontSize
                                                      .blockSizeHorizontal! *
                                                  3)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 125,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Gap(spacing * 3),
                                EventButton(
                                    onPressed: () {},
                                    image: 'assets/images/event1.png',
                                    title: "Create Mindfullness in\nAcademic",
                                    date: "Rabu, 27 Februari 2023",
                                    time: "14:00 - 15:30"),
                                Gap(spacing * 2),
                                EventButton(
                                    onPressed: () {},
                                    image: 'assets/images/event2.png',
                                    title: "Create Mindfullness in\nAcademic",
                                    date: "Rabu, 27 Februari 2023",
                                    time: "14:00 - 15:30"),
                                Gap(spacing * 2),
                                EventButton(
                                    onPressed: () {},
                                    image: 'assets/images/event3.png',
                                    title: "Create Mindfullness in\nAcademic",
                                    date: "Rabu, 27 Februari 2023",
                                    time: "14:00 - 15:30"),
                                Gap(spacing * 3),
                              ],
                            ),
                          ),
                          Gap(spacing * 2),
                          Padding(
                            padding: EdgeInsets.all(spacing * 3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 220,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("LuceGuide",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: FontSize
                                                          .blockSizeHorizontal! *
                                                      4.2)),
                                      Text(
                                          "Listen to inspiration which can make your mental healthier",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: FontSize
                                                          .blockSizeHorizontal! *
                                                      3))
                                    ],
                                  ),
                                ),
                                InkWell(
                                  highlightColor: columbiaBlue.withOpacity(0.5),
                                  onTap: () => Get.to(() => LuceGuidePage(),
                                      transition: Transition.rightToLeft,
                                      duration:
                                          const Duration(milliseconds: 500)),
                                  child: Text("See more",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.bold,
                                              fontSize: FontSize
                                                      .blockSizeHorizontal! *
                                                  3)),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: FontSize.blockSizeVertical! * 15,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Gap(spacing * 3),
                                LuceGuideButton(
                                  onPressed: () {},
                                  image: 'assets/images/lonely.png',
                                  title: "Overcome Lonely",
                                  total: "5 sessions",
                                  background: lemonChiffon,
                                ),
                                Gap(spacing * 2),
                                LuceGuideButton(
                                  onPressed: () {},
                                  image: 'assets/images/mind-management.png',
                                  title: "Mind Management Building",
                                  total: "5 sessions",
                                  background: pigPink,
                                ),
                                Gap(spacing * 2),
                                LuceGuideButton(
                                  onPressed: () {},
                                  image: 'assets/images/demotivation.png',
                                  title: "Overcome Demotivation",
                                  total: "5 sessions",
                                  background: columbiaBlue,
                                ),
                                Gap(spacing * 3),
                              ],
                            ),
                          ),
                          Gap(spacing * 3),
                        ],
                      )),
                  Padding(
                    padding: EdgeInsets.all(spacing * 3),
                    child: Card(
                        margin: EdgeInsets.only(
                            top: FontSize.blockSizeVertical! * 16),
                        color: white,
                        elevation: 3,
                        shadowColor: black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular((radius * 2) + 4),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: spacing * 1.5),
                          child: Container(
                            height: 75,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Today's Proverb",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 1,
                                      width: 20,
                                      color: black,
                                    )
                                  ],
                                ),
                                Text(
                                    '"Let your story go. Allow yourself to be present with\nwho you are right now."',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12,
                                            fontStyle: FontStyle.italic)),
                                Text("- Russ Kyle",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12))
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            )),
          ),
        ));
  }
}
