import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/controller/pages/main/main_app_controller.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<MainAppController>(
      init: MainAppController(),
      builder: (controller) => Scaffold(
        body: controller.pages[controller.currentPageIndex.value],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0),
              )
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: spacing),
          child: BottomNavigationBar(
            currentIndex: controller.currentPageIndex.value,
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: blue,
            showUnselectedLabels: true,
            unselectedItemColor: darkGrey,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: spacing / 2),
                  child: SvgPicture.asset(
                    'assets/images/icons/home_outline.svg',
                    color: controller.currentPageIndex.value == 0
                        ? blue
                        : darkGrey,
                    width: spacing * 3,
                  ),
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: spacing / 2),
                    child: SvgPicture.asset(
                      'assets/images/icons/users_outline.svg',
                      color: controller.currentPageIndex.value == 1
                          ? blue
                          : darkGrey,
                      width: spacing * 3,
                    ),
                  ),
                  label: "Counseling"),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: spacing / 2),
                    child: SvgPicture.asset(
                      'assets/images/icons/search_outline.svg',
                      color: controller.currentPageIndex.value == 2
                          ? blue
                          : darkGrey,
                      width: spacing * 3,
                    ),
                  ),
                  label: "Explore"),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: spacing / 2),
                    child: SvgPicture.asset(
                      'assets/images/icons/account_outline.svg',
                      color: controller.currentPageIndex.value == 3
                          ? blue
                          : darkGrey,
                      width: spacing * 3,
                    ),
                  ),
                  label: "Account"),
            ],
            onTap: (index) => controller.setPageIndex(index),
          ),
        ),
      ),
    );
  }
}
