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
import 'package:lucely_app/controller/pages/authentication/splash_screen2_controller.dart';
import 'package:lucely_app/widgets/button/bookluce.dart';
import 'package:lucely_app/widgets/button/feature_button.dart';
import 'package:sizer/sizer.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  // final pageController = Get.put(SplashScreen2Controller());

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/psikolog.png',
      'assets/images/mentor.png',
    ];
    return Container(
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
                            onPressed: () {},
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
                                fontWeight: FontWeight.w700, fontSize: 24)),
                    Gap(spacing * 1),
                    Text(
                        "Yuk ceritakan isi hatimu, temukan jalan\nkeluar atas permasalahanmu.",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w400, fontSize: 14))
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 210),
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
                            onPressed: () {},
                            image: "assets/images/Counseling.png",
                            label: "Konseling",
                          ),
                          FeatureButton(
                            onPressed: () {},
                            image: "assets/images/Events.png",
                            label: "Event",
                          ),
                          FeatureButton(
                            onPressed: () {},
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
                        height: 125,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            "Tingkatkan\nKesejahteraan Mentalmu",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15)),
                                        Text(
                                            "Yuk, ceritakan permasalahanmu bersama psikolog",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 10)),
                                        Gap(spacing),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            elevation:
                                                MaterialStateProperty.all(0),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              blue,
                                            ),
                                            padding: MaterialStateProperty.all(
                                              const EdgeInsets.symmetric(
                                                  vertical: spacing - 2,
                                                  horizontal: spacing * 2),
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        radius * 2),
                                              ),
                                            ),
                                          ),
                                          child: Center(
                                              child: Text(
                                                  "Konseling dengan Psikolog",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 11,
                                                          color: white))),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 90,
                                      height: 90,
                                      child: Image.asset(
                                        'assets/images/psikolog2.png',
                                        // width: 90,
                                        // height: 90,
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            "Upgrade Diri Untuk Menjadi\nVersi Terbaikmu",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 15)),
                                        Text(
                                            "Yuk, ceritakan permasalahanmu bersama mentor",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 10)),
                                        Gap(spacing),
                                        ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            elevation:
                                                MaterialStateProperty.all(0),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                              blue,
                                            ),
                                            padding: MaterialStateProperty.all(
                                              const EdgeInsets.symmetric(
                                                  vertical: spacing - 2,
                                                  horizontal: spacing * 2),
                                            ),
                                            shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        radius * 2),
                                              ),
                                            ),
                                          ),
                                          child: Center(
                                              child: Text(
                                                  "Konseling dengan Mentor",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 11,
                                                          color: white))),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 90,
                                      height: 90,
                                      child: Image.asset(
                                        'assets/images/mentor2.png',
                                        // width: 90,
                                        // height: 90,
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Bookluce Terbaru",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                Text(
                                    "Baca ringkasan buku best seller internasional",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12))
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text("Lihat Semua",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 194,
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
                                Text("Event Terdekat",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                Text(
                                    "Diskusi langsung sekaligus bedah kasus\nbareng ahlinya",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12))
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text("Lihat Semua",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
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
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 315,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(width: 1, color: lightGrey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(spacing * 1.3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 74,
                                        height: 74,
                                        child: Image.asset(
                                          'assets/images/event1.png',
                                          // width: 90,
                                          // height: 90,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              "Menciptakan Mindfullness Dalam\nAkademik",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 13)),
                                          Gap(spacing),
                                          Text("Rabu, 27 Februari 2023",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10)),
                                          Text("14:00 - 15:30",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10)),
                                          Gap(spacing),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Gap(spacing * 2),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 315,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(width: 1, color: lightGrey),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: EdgeInsets.all(spacing * 1.3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 74,
                                        height: 74,
                                        child: Image.asset(
                                          'assets/images/event1.png',
                                          // width: 90,
                                          // height: 90,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              "Menciptakan Mindfullness Dalam\nAkademik",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 13)),
                                          Gap(spacing),
                                          Text("Rabu, 27 Februari 2023",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10)),
                                          Text("14:00 - 15:30",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 10)),
                                          Gap(spacing),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("LuceGuide",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                Text(
                                    "Dengarkan inspirasi dan self-help mandiri untuk\njadi lebih baik menjalani hari",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 12))
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text("Lihat Semua",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12)),
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
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 315,
                                decoration: BoxDecoration(
                                    color: lemonChiffon,
                                    // border:
                                    //     Border.all(width: 0, color: lightGrey),
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
                                          Text("Mengatasi Kesepian",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 17)),
                                          Gap(spacing),
                                          Text("6 sesi singkat",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 12)),
                                          Gap(spacing),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 95,
                                        height: 74,
                                        child: Image.asset(
                                          'assets/images/Anxiety.png',
                                          // width: 90,
                                          // height: 90,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Gap(spacing * 2),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 315,
                                decoration: BoxDecoration(
                                    color: lemonChiffon,
                                    // border:
                                    //     Border.all(width: 0, color: lightGrey),
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
                                          Text("Mengatasi Kesepian",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 17)),
                                          Gap(spacing),
                                          Text("6 sesi singkat",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 12)),
                                          Gap(spacing),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 95,
                                        height: 74,
                                        child: Image.asset(
                                          'assets/images/Anxiety.png',
                                          // width: 90,
                                          // height: 90,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Gap(spacing * 3),
                          ],
                        ),
                      ),
                      Gap(spacing * 15),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.all(spacing * 3),
                child: Card(
                    margin: EdgeInsets.only(top: 140),
                    color: white,
                    elevation: 3,
                    shadowColor: black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular((radius * 2) + 4),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: spacing * 1.5),
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
    );
  }
}
