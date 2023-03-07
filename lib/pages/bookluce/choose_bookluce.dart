import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/bookluce_model.dart';
import 'package:lucely_app/pages/bookluce/bookluce_detail.dart';
import 'package:lucely_app/widgets/card/category_card.dart';
import 'package:lucely_app/widgets/input/rounded_search_input.dart';
import 'package:lucely_app/common/font_size.dart';

class ChooseBookluce extends StatelessWidget {
  const ChooseBookluce({super.key});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);

    final List<String> title = <String>[
      "Good Vibes, Good Life",
      "The Art of Thinking Clearly",
      "Dear Tomorrow",
      "Eat That Frog",
      "The Midnight Library",
      "How to Win Friends & Influence People"
    ];

    final List<String> image = <String>[
      "assets/images/Bookluce1.png",
      "assets/images/Bookluce2.png",
      "assets/images/Bookluce3.png",
      "assets/images/Bookluce4.png",
      "assets/images/Bookluce5.png",
      "assets/images/Bookluce6.png",
    ];

    final List<String> author = <String>[
      "Vex King",
      "Rolf Dobelli",
      "Maudy Ayunda",
      "Brian Tracy",
      "Matt Hagg",
      "Dale Carnegie"
    ];

    final List<BookluceModel> bookluceData = List.generate(
        title.length,
        (index) => BookluceModel(
              '${title[index]}',
              '${image[index]}',
              '${author[index]}',
            ));

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
        title: Text("Bookluce",
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
              Text("Read the summary of best-selling books",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: FontSize.blockSizeHorizontal! * 3.2)),
              const Gap(spacing * 2),
              const RoundedSearchInput(
                placeholder: "Find a book",
              ),
              const Gap(spacing * 2),
              Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.start,
                spacing: spacing,
                children: const [
                  CategoryCard(label: "All"),
                  CategoryCard(label: "Mindfulness"),
                  CategoryCard(label: "Personal Development"),
                  CategoryCard(label: "Self Growth & Motivation"),
                  CategoryCard(label: "Productivity"),
                  CategoryCard(label: "Meditation"),
                  CategoryCard(label: "Mind Management"),
                ],
              ),
              const Gap(spacing * 4),
              GridView.builder(
                shrinkWrap: true,
                itemCount: title.length,
                physics: const BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: FontSize.blockSizeHorizontal! * 45,
                    crossAxisSpacing: spacing * 2,
                    mainAxisSpacing: spacing,
                    mainAxisExtent: FontSize.blockSizeVertical! * 37),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () => Get.to(
                        () =>
                            BookluceDetail(bookluceModel: bookluceData[index]),
                        transition: Transition.rightToLeftWithFade,
                        duration: const Duration(milliseconds: 500)),
                    child: Column(children: [
                      Container(
                        width: double.infinity,
                        child: Image.asset(bookluceData[index].imageUrl),
                      ),
                      const Gap(spacing),
                      Text(bookluceData[index].name,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      FontSize.blockSizeHorizontal! * 3.5)),
                      const Gap(spacing - 6),
                      Text(bookluceData[index].author,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      FontSize.blockSizeHorizontal! * 2.5))
                    ]),
                  );
                },
              ),
              const Gap(spacing * 6)
            ],
          ),
        ),
      )),
    );
  }
}
