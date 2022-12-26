import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class SplashScreen2Controller extends GetxController {
  var current = 0.obs;

  final CarouselController carouselController = CarouselController();

  void changeIndex(int index) {
    current.value = index;
  }
}
