import 'package:get/get.dart';

class BottomNav extends GetxController {
  // .obs is used to make the variable observable
  var currentIndex = 0.obs;
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
