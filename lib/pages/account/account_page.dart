import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/authentication/splash_screen2.dart';
import 'package:lucely_app/pages/account/contact_admin_page.dart';
import 'package:lucely_app/pages/account/edit_account_page.dart';
import 'package:lucely_app/pages/account/get_help_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          backgroundColor: white,
          appBar: AppBar(
            shape: const Border(
                bottom: BorderSide(color: veryLightGrey, width: 1)),
            backgroundColor: white,
            elevation: 0,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text("Account",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: FontSize.blockSizeHorizontal! * 4)),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(spacing * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: FontSize.blockSizeHorizontal! * 25,
                        height: FontSize.blockSizeHorizontal! * 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius * 10),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/fotoOrang.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                  const Gap(spacing),
                  Column(
                    children: [
                      Text("Sayonara",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: FontSize.blockSizeHorizontal! * 4)),
                      const Gap(spacing / 2),
                      Text("sayonara@gmail.com",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  fontSize: FontSize.blockSizeHorizontal! * 3))
                    ],
                  ),
                  const Gap(spacing * 3),
                  Container(
                    // width: 200,
                    height: 1,
                    decoration: const BoxDecoration(color: lightGrey),
                  ),
                  const Gap(spacing * 3),
                  ElevatedButton(
                    onPressed: () => Get.to(() => const EditAccount(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500)),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: Container(
                      height: FontSize.blockSizeVertical! * 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/icons/edit.svg',
                                color: blue,
                                width: spacing * 3,
                              ),
                              const Gap(spacing * 2),
                              Text("Edit Account",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize:
                                              FontSize.blockSizeHorizontal! *
                                                  3.5))
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/images/icons/arrow_right.svg',
                            color: black,
                            width: spacing * 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.to(() => const GetHelp(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500)),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: Container(
                      height: FontSize.blockSizeVertical! * 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/icons/info_square.svg',
                                color: blue,
                                width: spacing * 3,
                              ),
                              const Gap(spacing * 2),
                              Text("FAQ and Help",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize:
                                              FontSize.blockSizeHorizontal! *
                                                  3.5))
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/images/icons/arrow_right.svg',
                            color: black,
                            width: spacing * 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.to(() => const ContactAdmin(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500)),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: Container(
                      height: FontSize.blockSizeVertical! * 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/icons/message.svg',
                                color: blue,
                                width: spacing * 3,
                              ),
                              const Gap(spacing * 2),
                              Text("Contact Admin",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize:
                                              FontSize.blockSizeHorizontal! *
                                                  3.5))
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/images/icons/arrow_right.svg',
                            color: black,
                            width: spacing * 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.to(() => SplashScreen2(),
                        transition: Transition.upToDown,
                        duration: const Duration(milliseconds: 500)),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: Container(
                      height: FontSize.blockSizeVertical! * 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/images/icons/logout.svg',
                                color: blue,
                                width: spacing * 3,
                              ),
                              const Gap(spacing * 2),
                              Text("Sign Out",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize:
                                              FontSize.blockSizeHorizontal! *
                                                  3.5))
                            ],
                          ),
                          SvgPicture.asset(
                            'assets/images/icons/arrow_right.svg',
                            color: black,
                            width: spacing * 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
        ));
  }
}
