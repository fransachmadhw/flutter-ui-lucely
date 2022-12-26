import 'dart:developer';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class SplashScreen2Controller extends GetxController {
  var current = 0.obs;

  final List<String> imgList = [
    'assets/images/splash1.png',
    'assets/images/splash2.png',
    'assets/images/splash3.png',
  ];

  final CarouselController carouselController = CarouselController();

  void pageChanged(int key) {
    carouselController.animateToPage(key);
    update();
  }

  void changeIndex(int index) {
    current.value = index;
  }
}
