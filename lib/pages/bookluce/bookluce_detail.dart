import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/bookluce_model.dart';
import 'package:lucely_app/pages/bookluce/bookluce_chapter1.dart';
import 'package:lucely_app/pages/bookluce/bookluce_chapter2.dart';
import 'package:lucely_app/pages/bookluce/bookluce_chapter3.dart';
import 'package:lucely_app/pages/bookluce/bookluce_chapter4.dart';
import 'package:lucely_app/pages/bookluce/bookluce_chapter5.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';
import 'package:lucely_app/widgets/card/category_card.dart';
import 'package:lucely_app/widgets/input/rounded_search_input.dart';
import 'package:lucely_app/common/font_size.dart';

class BookluceDetail extends StatelessWidget {
  final BookluceModel bookluceModel;
  const BookluceDetail({super.key, required this.bookluceModel});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
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
        title: Text("Bookluce Detail",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: FontSize.blockSizeHorizontal! * 4)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(spacing * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: FontSize.blockSizeHorizontal! * 40,
                        child: Image.asset(bookluceModel.imageUrl),
                      ),
                    ],
                  ),
                  const Gap(spacing * 2),
                  Text(bookluceModel.name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: FontSize.blockSizeHorizontal! * 4)),
                  const Gap(spacing / 2),
                  Text(bookluceModel.author,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: FontSize.blockSizeHorizontal! * 3)),
                  const Gap(spacing * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: FontSize.blockSizeHorizontal! * 50,
                        child: PrimaryButton(
                            onPressed: () => Get.to(
                                () => BookluceChapter1(
                                    bookluceModel: bookluceModel),
                                transition: Transition.rightToLeft,
                                duration: const Duration(milliseconds: 500)),
                            title: "Read Now",
                            type: ButtonType.primary,
                            isLoading: false),
                      )
                    ],
                  ),
                ],
              ),
              const Gap(spacing * 4),
              Text("About Book",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.blockSizeHorizontal! * 3.5)),
              const Gap(spacing * 4),
              Text("Chapter List",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
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
              ElevatedButton(
                onPressed: () => Get.to(
                    () => BookluceChapter1(bookluceModel: bookluceModel),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500)),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("1. Intro",
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      FontSize.blockSizeHorizontal! * 3.2)),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: black,
                        width: FontSize.blockSizeHorizontal! * 4,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              ElevatedButton(
                onPressed: () => Get.to(
                    () => BookluceChapter2(bookluceModel: bookluceModel),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500)),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("2. Being Yourself",
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      FontSize.blockSizeHorizontal! * 3.2)),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: black,
                        width: FontSize.blockSizeHorizontal! * 4,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              ElevatedButton(
                onPressed: () => Get.to(
                    () => BookluceChapter3(bookluceModel: bookluceModel),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500)),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("3. Dreams",
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      FontSize.blockSizeHorizontal! * 3.2)),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: black,
                        width: FontSize.blockSizeHorizontal! * 4,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              ElevatedButton(
                onPressed: () => Get.to(
                    () => BookluceChapter4(bookluceModel: bookluceModel),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500)),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("4. Love",
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      FontSize.blockSizeHorizontal! * 3.2)),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: black,
                        width: FontSize.blockSizeHorizontal! * 4,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              ElevatedButton(
                onPressed: () => Get.to(
                    () => BookluceChapter5(bookluceModel: bookluceModel),
                    transition: Transition.rightToLeft,
                    duration: const Duration(milliseconds: 500)),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: Container(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("5. Mindset",
                          textAlign: TextAlign.start,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize:
                                      FontSize.blockSizeHorizontal! * 3.2)),
                      SvgPicture.asset(
                        'assets/images/icons/arrow_right.svg',
                        color: black,
                        width: FontSize.blockSizeHorizontal! * 4,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              const Gap(spacing * 4)
            ],
          ),
        ),
      )),
    );
  }
}
