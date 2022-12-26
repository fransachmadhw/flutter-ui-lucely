import 'package:get/get.dart';

class LoginPageController extends GetxController {
  var isRememberMe = false.obs;

  void toggleRemember() {
    isRememberMe.value = !isRememberMe.value;
  }
}
