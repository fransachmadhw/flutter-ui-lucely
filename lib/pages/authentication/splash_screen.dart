import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/controller/pages/authentication/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final pageController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: spacing * 18,
            height: spacing * 18,
            child: Image.asset('assets/images/lucely-logo.png'),
          ),
        ),
      ),
    );
  }
}
