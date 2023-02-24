import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/authentication/splash_screen2.dart';
import 'package:lucely_app/pages/main/contact_admin_page.dart';
import 'package:lucely_app/pages/main/edit_account_page.dart';
import 'package:lucely_app/pages/main/get_help_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          backgroundColor: white,
          appBar: AppBar(
            shape: Border(bottom: BorderSide(color: veryLightGrey, width: 1)),
            backgroundColor: white,
            elevation: 0,
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Text("Account",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
          ),
          body: SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(spacing * 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Gap(spacing),
                  // SizedBox(
                  //   width: 80,
                  //   height: 80,
                  //   child: Image.asset('assets/images/avatar.png'),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius * 10),
                            image: DecorationImage(
                                image:
                                    AssetImage('assets/images/fotoOrang.jpg'),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  ),

                  Gap(spacing),
                  Column(
                    children: [
                      Text("Sayonara",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 15)),
                      Gap(spacing - 4),
                      Text("sayonara@gmail.com",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  fontWeight: FontWeight.normal, fontSize: 10))
                    ],
                  ),
                  Gap(spacing * 3),
                  Container(
                    // width: 200,
                    height: 1,
                    decoration: BoxDecoration(color: lightGrey),
                  ),
                  Gap(spacing * 3),
                  ElevatedButton(
                    onPressed: () => Get.to(() => EditAccount()),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      // shape: MaterialStateProperty.all(
                      //   RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(0),
                      //     side: BorderSide(width: 1, color: lightGrey),
                      //   ),
                      // ),
                    ),
                    child: Container(
                      height: 20,
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
                              Gap(spacing * 2),
                              Text("Edit Account",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14))
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
                    onPressed: () => Get.to(() => GetHelp()),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      // shape: MaterialStateProperty.all(
                      //   RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(0),
                      //     side: BorderSide(width: 1, color: lightGrey),
                      //   ),
                      // ),
                    ),
                    child: Container(
                      height: 20,
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
                              Gap(spacing * 2),
                              Text("FAQ and Help",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14))
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
                    onPressed: () => Get.to(() => ContactAdmin()),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      // shape: MaterialStateProperty.all(
                      //   RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(0),
                      //     side: BorderSide(width: 1, color: lightGrey),
                      //   ),
                      // ),
                    ),
                    child: Container(
                      height: 20,
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
                              Gap(spacing * 2),
                              Text("Contact Admin",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14))
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
                    onPressed: () => Get.to(() => SplashScreen2()),
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      // shape: MaterialStateProperty.all(
                      //   RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(0),
                      //     side: BorderSide(width: 1, color: lightGrey),
                      //   ),
                      // ),
                    ),
                    child: Container(
                      height: 20,
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
                              Gap(spacing * 2),
                              Text("Sign Out",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14))
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
