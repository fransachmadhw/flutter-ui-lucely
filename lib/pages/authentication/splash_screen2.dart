import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:lucely_app/controller/pages/authentication/splash_screen2_controller.dart';
import 'package:lucely_app/pages/authentication/login_page.dart';
import 'package:lucely_app/pages/authentication/register_page.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';

class SplashScreen2 extends StatelessWidget {
  SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);

    return GetX<SplashScreen2Controller>(
      init: SplashScreen2Controller(),
      builder: (controller) => Scaffold(
        backgroundColor: white,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(spacing * 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CarouselSlider(
                    carouselController: controller.carouselController,
                    items: controller.imgList
                        .map(
                          (item) => Column(
                            children: [
                              SizedBox(
                                width: 260,
                                height: 180,
                                child: Image.asset(item, fit: BoxFit.contain),
                              ),
                              const Gap(spacing * 3),
                              if (item == 'assets/images/splash1.png')
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Upgrade Yourself',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontSize: FontSize
                                                        .blockSizeHorizontal! *
                                                    5)),
                                    const Gap(spacing),
                                    SizedBox(
                                      width: 220,
                                      child: Text(
                                          'Improve yourself by reading the best-selling books in less than 20 minutes',
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  height: 1.5,
                                                  fontSize: FontSize
                                                          .blockSizeHorizontal! *
                                                      3)),
                                    ),
                                  ],
                                ),
                              if (item == 'assets/images/splash2.png')
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Self-help',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontSize: FontSize
                                                        .blockSizeHorizontal! *
                                                    5)),
                                    const Gap(spacing),
                                    SizedBox(
                                      width: 240,
                                      child: Text(
                                        'Listen to inspiration which can make your mental healthier',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                height: 1.5,
                                                fontSize: FontSize
                                                        .blockSizeHorizontal! *
                                                    3),
                                      ),
                                    ),
                                  ],
                                ),
                              if (item == 'assets/images/splash3.png')
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Be better',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                                fontSize: FontSize
                                                        .blockSizeHorizontal! *
                                                    5)),
                                    const Gap(spacing),
                                    SizedBox(
                                      width: 220,
                                      child: Text(
                                        'Be inspired by dicussing in person with expert psychologists and mentors',
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                height: 1.5,
                                                fontSize: FontSize
                                                        .blockSizeHorizontal! *
                                                    3),
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        viewportFraction: 1,
                        aspectRatio: 1.0,
                        onPageChanged: (index, reason) =>
                            controller.changeIndex(index)),
                  ),
                  const Gap(spacing * 1),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: controller.imgList.asMap().entries.map(
                        (entry) {
                          return GestureDetector(
                            onTap: () => controller.pageChanged(entry.key),
                            child: Container(
                              width: 7.0,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 4.0,
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : blue)
                                    .withOpacity(
                                        controller.current.toInt() == entry.key
                                            ? 0.9
                                            : 0.4),
                              ),
                            ),
                          );
                        },
                      ).toList()),
                  const Gap(spacing * 3),
                  PrimaryButton(
                    isLoading: false,
                    onPressed: () => Get.to(() => const RegisterPage(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500)),
                    title: 'Sign Up',
                    type: ButtonType.primary,
                  ),
                  const Gap(spacing * 1.8),
                  PrimaryButton(
                    isLoading: false,
                    onPressed: () => Get.to(() => const LoginPage(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500)),
                    title: 'Sign In',
                    type: ButtonType.secondary,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
