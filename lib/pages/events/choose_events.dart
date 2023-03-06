import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/events_model.dart';
import 'package:lucely_app/pages/events/event_page.dart';
import 'package:lucely_app/widgets/input/rounded_search_input.dart';
import 'package:lucely_app/common/font_size.dart';

class ChooseEvents extends StatelessWidget {
  const ChooseEvents({super.key});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);

    final List<String> name = <String>[
      "Take Care of Well-Being during Pandemic",
      "The Key to Being Confident without Being Overconfident",
      "Deal With Your Innerchild in Deep Talking"
    ];

    final List<String> picture = <String>[
      "assets/images/event1.png",
      "assets/images/event2.png",
      "assets/images/event3.png",
    ];

    final List<EventsModel> eventsData = List.generate(name.length,
        (index) => EventsModel('${name[index]}', '${picture[index]}'));

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
        title: Text("Events",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: FontSize.blockSizeHorizontal! * 4)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(spacing * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Upgrade yourself with exciting ways",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: FontSize.blockSizeHorizontal! * 3.2)),
              Gap(spacing * 2),
              RoundedSearchInput(
                placeholder: "Search events",
              ),
              Gap(spacing * 3),
              Wrap(
                children: [
                  ListView.separated(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: name.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ElevatedButton(
                          onPressed: () => Get.to(
                              () => EventPage(eventsModel: eventsData[index]),
                              transition: Transition.rightToLeftWithFade,
                              duration: const Duration(milliseconds: 500)),
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor:
                                MaterialStateProperty.all(aliceBlue),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(radius),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: spacing * 1.3,
                                vertical: spacing * 3),
                            child: Container(
                              width: FontSize.blockSizeHorizontal! * 75,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: FontSize.blockSizeHorizontal! * 22,
                                    height: FontSize.blockSizeHorizontal! * 22,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(radius / 2),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                eventsData[index].imageUrl),
                                            fit: BoxFit.cover)),
                                  ),
                                  Gap(spacing * 2.5),
                                  SizedBox(
                                    width: FontSize.blockSizeHorizontal! * 40,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(eventsData[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: FontSize
                                                            .blockSizeHorizontal! *
                                                        4)),
                                        Gap(spacing),
                                        Text("Wednesday, 27 February 2023",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: FontSize
                                                            .blockSizeHorizontal! *
                                                        3)),
                                        Text("2:00 PM - 3:30 PM",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: FontSize
                                                            .blockSizeHorizontal! *
                                                        3)),
                                        Gap(spacing),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(color: Colors.transparent),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
