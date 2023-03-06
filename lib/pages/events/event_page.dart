import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/events_model.dart';
import 'package:lucely_app/pages/events/join_event.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';

class EventPage extends StatelessWidget {
  final EventsModel eventsModel;
  const EventPage({super.key, required this.eventsModel});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: FontSize.blockSizeVertical! * 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(eventsModel.imageUrl), fit: BoxFit.fill),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: FontSize.blockSizeVertical! * 57),
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(spacing * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About Event",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: FontSize.blockSizeHorizontal! * 4)),
                    Gap(spacing),
                    Container(
                      height: 8,
                      width: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: blue),
                    ),
                    Gap(spacing),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: FontSize.blockSizeHorizontal! * 3.5)),
                    Gap(spacing * 4),
                    Text("Benefits",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: FontSize.blockSizeHorizontal! * 4)),
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Free certificate for all participants",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Networking",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Knowledge",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Doorprize",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                      ],
                    ),
                    Gap(spacing * 4),
                    Text("Speakers",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: FontSize.blockSizeHorizontal! * 4)),
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Dilza Adilah",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Brian Romero",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Andy Maxxel",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                      ],
                    ),
                    Gap(spacing * 4),
                    Text("What will you learn?",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: FontSize.blockSizeHorizontal! * 4)),
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Mindfulness",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Positive Vibes",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
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
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                        Text(" Productivity Life",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3.5,
                                )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: spacing * 3),
              child: Card(
                  margin:
                      EdgeInsets.only(top: FontSize.blockSizeVertical! * 38),
                  color: white,
                  elevation: 3,
                  shadowColor: black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular((radius * 2) + 4),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(spacing * 3),
                    child: Container(
                      // height: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(eventsModel.name,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize:
                                          FontSize.blockSizeHorizontal! * 4)),
                          Gap(spacing - 2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: 40,
                                color: black,
                              )
                            ],
                          ),
                          Gap(spacing),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/icons/Calendar.svg',
                                color: yellow,
                                width: FontSize.blockSizeHorizontal! * 4,
                              ),
                              Gap(spacing / 2),
                              Text('Wednesday, 27 February 2023',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize:
                                              FontSize.blockSizeHorizontal! * 3,
                                          color: darkGrey)),
                            ],
                          ),
                          Gap(spacing),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/icons/TimeCircle.svg',
                                color: blue,
                                width: FontSize.blockSizeHorizontal! * 4,
                              ),
                              Gap(spacing / 2),
                              Text('2:00 PM - 3:30 PM',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize:
                                              FontSize.blockSizeHorizontal! * 3,
                                          color: darkGrey)),
                            ],
                          ),
                          Gap(spacing),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/icons/Location.svg',
                                color: pink,
                                width: FontSize.blockSizeHorizontal! * 4,
                              ),
                              Gap(spacing / 2),
                              Text('Online',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize:
                                              FontSize.blockSizeHorizontal! * 3,
                                          color: darkGrey)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      )),
      bottomNavigationBar: Container(
          height: FontSize.blockSizeVertical! * 10.5,
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
                      onPressed: () => Get.to(
                          () => JoinEvent(eventsModel: eventsModel),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500)),
                      title: "Join Event",
                      type: ButtonType.primary,
                      isLoading: false)
                ],
              ),
            ),
          )),
    );
  }
}
