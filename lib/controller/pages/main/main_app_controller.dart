import 'package:get/get.dart';
import 'package:lucely_app/pages/account/account_page.dart';
import 'package:lucely_app/pages/counseling/counseling_page.dart';
import 'package:lucely_app/pages/main/explore_page.dart';
import 'package:lucely_app/pages/main/home_page.dart';
import 'package:lucely_app/pages/main/notification_page.dart';

class MainAppController extends GetxController {
  RxInt currentPageIndex = 0.obs;
  final pages = [
    const HomePage(),
    const CounselingPage(),
    const ExplorePage(),
    const AccountPage(),
  ];

  void setPageIndex(int index) {
    currentPageIndex.value = index;
  }
}
