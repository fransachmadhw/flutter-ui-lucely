import 'dart:async';

import 'package:get/get.dart';
import 'package:lucely_app/pages/authentication/splash_screen2.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    delayedRedirect();
  }

  delayedRedirect() {
    Timer(
      const Duration(seconds: 2),
      () => Get.to(() => SplashScreen2(),
          transition: Transition.fadeIn,
          duration: const Duration(milliseconds: 500)),
    );
  }
}
