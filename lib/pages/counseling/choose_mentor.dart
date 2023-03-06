import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/mentor_model.dart';
import 'package:lucely_app/pages/counseling/mentor_page.dart';
import 'package:lucely_app/widgets/input/rounded_search_input.dart';
import 'package:lucely_app/common/font_size.dart';

class ChooseMentor extends StatelessWidget {
  const ChooseMentor({super.key});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    final List<String> name = <String>[
      "Luis Firmansyah",
      "Bagas Sirait",
      "Olga Pradipta",
      "Ghani Wibisono",
      "Radika Pratama",
    ];

    final List<String> picture = <String>[
      "assets/images/mentor1.png",
      "assets/images/mentor3.png",
      "assets/images/mentor4.png",
      "assets/images/mentor5.png",
      "assets/images/mentor6.png",
    ];

    final List<MentorModel> mentorData = List.generate(name.length,
        (index) => MentorModel('${name[index]}', '${picture[index]}'));

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
        title: Text("Choose your mentor",
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
              RoundedSearchInput(
                placeholder: "Search mentor",
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
                            () => MentorPage(mentorModel: mentorData[index]),
                            transition: Transition.rightToLeftWithFade,
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
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: FontSize.blockSizeVertical! * 20,
                                    width: FontSize.blockSizeHorizontal! * 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            mentorData[index].imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Gap(spacing * 2),
                                  SizedBox(
                                    width: FontSize.blockSizeHorizontal! * 32,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(mentorData[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: FontSize
                                                            .blockSizeHorizontal! *
                                                        4)),
                                        Text("CEO Lucely App",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: FontSize
                                                            .blockSizeHorizontal! *
                                                        2.5)),
                                        Gap(spacing * 1),
                                        SizedBox(
                                          width: FontSize.blockSizeHorizontal! *
                                              28,
                                          child: Text(
                                              "Career Path, Self Development, Education, Interview, Productivity, +3 others",
                                              maxLines: 3,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: FontSize
                                                              .blockSizeHorizontal! *
                                                          2.5,
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
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 0),
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
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: FontSize
                                                            .blockSizeHorizontal! *
                                                        3)),
                                        Gap(spacing * 0.2),
                                        Text("Sunday, 7:00 pm",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: FontSize
                                                            .blockSizeHorizontal! *
                                                        2.5,
                                                    color: darkGrey)),
                                        Gap(spacing * 1),
                                        ConstrainedBox(
                                          constraints:
                                              const BoxConstraints.tightFor(
                                                  height: 30),
                                          child: ElevatedButton(
                                            onPressed: () => Get.to(
                                                () => MentorPage(
                                                    mentorModel:
                                                        mentorData[index]),
                                                transition: Transition
                                                    .rightToLeftWithFade,
                                                duration: const Duration(
                                                    milliseconds: 500)),
                                            style: ButtonStyle(
                                              elevation:
                                                  MaterialStateProperty.all(0),
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                blue,
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
                                                child: Text("Choose",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight.w700,
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
