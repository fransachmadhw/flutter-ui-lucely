import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/data/bookluce_model.dart';
import 'package:lucely_app/pages/bookluce/bookluce_chapter3.dart';

class BookluceChapter2 extends StatelessWidget {
  final BookluceModel bookluceModel;
  const BookluceChapter2({super.key, required this.bookluceModel});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Iconify(MaterialSymbols.arrow_back_ios_new_rounded)),
        centerTitle: true,
        title: Text(bookluceModel.name,
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
              Text("Chapter 2",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: FontSize.blockSizeHorizontal! * 4.2)),
              Gap(spacing),
              Container(
                height: 8,
                width: 47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: blue),
              ),
              Gap(spacing * 4),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.blockSizeHorizontal! * 4.2,
                      height: 2)),
              Gap(spacing * 4),
              Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: FontSize.blockSizeHorizontal! * 4.2,
                      height: 2)),
              Gap(spacing * 4),
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        height: FontSize.blockSizeVertical! * 10,
        decoration: BoxDecoration(
          color: white,
        ),
        child: Padding(
          padding: EdgeInsets.only(
              left: spacing * 4, right: spacing * 4, bottom: spacing * 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: FontSize.blockSizeHorizontal! * 12,
                height: FontSize.blockSizeHorizontal! * 12,
                child: ElevatedButton(
                    onPressed: () => Get.back(),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return columbiaBlue;
                          }
                          return white;
                        },
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(spacing * 0),
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/icons/arrow_left_square.svg',
                      color: blue,
                      width: FontSize.blockSizeHorizontal! * 20,
                      // height: 90,
                    )),
              ),
              SizedBox(
                width: FontSize.blockSizeHorizontal! * 12,
                height: FontSize.blockSizeHorizontal! * 12,
                child: ElevatedButton(
                    onPressed: () => Get.to(
                        () => BookluceChapter3(bookluceModel: bookluceModel),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500)),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return columbiaBlue;
                          }
                          return white;
                        },
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.all(spacing * 0),
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/icons/arrow_right_square.svg',
                      color: blue,
                      width: FontSize.blockSizeHorizontal! * 20,
                      // height: 90,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
