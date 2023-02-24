import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/psychologist_model.dart';
// import 'package:lucely_app/pages/main/main_app.dart';
import 'package:lucely_app/pages/main/psychologist_page.dart';
import 'package:lucely_app/widgets/button/counseling_button.dart';
// import 'package:lucely_app/widgets/button/psychologist.dart';
// import 'package:lucely_app/widgets/card/counseling_card.dart';
// import 'package:lucely_app/widgets/dialog/success_dialog.dart';
import 'package:lucely_app/widgets/input/rounded_search_input.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ChoosePsychologist extends StatelessWidget {
  const ChoosePsychologist({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> name = <String>[
      "Nadine Wastuti",
      "Paulin Agustina",
      "Vanya Pratiwi",
      "Ellis Safitri",
      "Nur Adilla",
    ];

    final List<String> picture = <String>[
      "assets/images/psikolog1.png",
      "assets/images/psikolog4.png",
      "assets/images/psikolog5.png",
      "assets/images/psikolog6.png",
      "assets/images/psikolog7.png",
    ];

    final List<PsychologistModel> psychologistData = List.generate(name.length,
        (index) => PsychologistModel('${name[index]}', '${picture[index]}'));

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
        title: Text("Choose your psychologist",
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
              RoundedSearchInput(
                placeholder: "Search psychologist",
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
                            () => PsychologistPage(
                                psychologistModel: psychologistData[index]),
                            transition: Transition.zoom,
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
                                    height: 160.0,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            psychologistData[index].imageUrl),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Gap(spacing * 2),
                                  SizedBox(
                                    width: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(psychologistData[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16)),
                                        Text("SIPP: 13324233",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 11)),
                                        Gap(spacing * 1),
                                        SizedBox(
                                          width: 200,
                                          child: Text(
                                              "Kepribadian, Kecemasan, Trauma, Pengembangan Diri, +3 lainnya",
                                              maxLines: 3,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 11,
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
                                        Text("Jadwal Terdekat",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12)),
                                        Gap(spacing * 0.2),
                                        Text("Minggu, 17:00 WIB",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 11,
                                                    color: darkGrey)),
                                        Gap(spacing * 1),
                                        ConstrainedBox(
                                          constraints:
                                              const BoxConstraints.tightFor(
                                                  height: 30),
                                          child: ElevatedButton(
                                            onPressed: () => Get.to(() =>
                                                PsychologistPage(
                                                    psychologistModel:
                                                        psychologistData[
                                                            index])),
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
                                                child: Text("Pilih",
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
                        const Divider(),
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
