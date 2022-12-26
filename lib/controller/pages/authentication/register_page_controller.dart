import 'package:get/get.dart';

class RegisterPageController extends GetxController {
  var isAgree = false.obs;

  void toggleRemember() {
    isAgree.value = !isAgree.value;
  }
}
