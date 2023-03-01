import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/luceguide_model.dart';
import 'package:lucely_app/pages/main/luceguide_page.dart';
import 'package:lucely_app/widgets/button/luceguide.dart';
import 'package:lucely_app/widgets/input/rounded_search_input.dart';

class ChooseLuceGuide extends StatelessWidget {
  const ChooseLuceGuide({super.key});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);

    final List<String> title = <String>[
      "Overcome Lonely",
      "Reduce Anxiety",
      "Mind Management Building",
      "Overcome Demotivation",
      "Stop Self-Harming",
      "Eisen-Hower Matrixs Method"
    ];

    final List<String> image = <String>[
      "assets/images/lonely.png",
      "assets/images/Anxiety.png",
      "assets/images/mind-management.png",
      "assets/images/demotivation.png",
      "assets/images/self-harm.png",
      "assets/images/self-harm.png"
    ];

    final List<Color> background = <Color>[
      lemonChiffon,
      greenLight,
      pigPink,
      lightCyan,
      lemonChiffon,
      greenLight
    ];

    final List<LuceGuideModel> luceGuideData = List.generate(
        title.length,
        (index) => LuceGuideModel(
            '${title[index]}', '${image[index]}', background[index]));

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
        title: Text("LuceGuide",
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
              ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: title.length,
                itemBuilder: (BuildContext context, int index) {
                  return ElevatedButton(
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStatePropertyAll(
                          luceGuideData[index].background),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(radius),
                        ),
                      ),
                    ),
                    onPressed: () => Get.to(
                        () =>
                            LuceGuidePage(luceGuideModel: luceGuideData[index]),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: spacing * 1, vertical: spacing * 4),
                      child: Container(
                        // width: FontSize.blockSizeHorizontal! * 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: FontSize.blockSizeHorizontal! * 50,
                                  child: Text(luceGuideData[index].title,
                                      // maxLines: 3,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: FontSize
                                                      .blockSizeHorizontal! *
                                                  5)),
                                ),
                                Gap(spacing),
                                Text("5 sessions",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.normal,
                                            fontSize:
                                                FontSize.blockSizeHorizontal! *
                                                    3)),
                                Gap(spacing),
                              ],
                            ),
                            SizedBox(
                              width: 85,
                              height: 64,
                              child: Image.asset(
                                luceGuideData[index].imageUrl,
                                // width: 90,
                                // height: 90,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  color: Colors.transparent,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
