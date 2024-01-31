import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;
  var count2 = 0.obs;
  var count3 = 0.obs;

  void increment() {
     count++;
  }

  void increment2() {
    count2++;
  }

  void increment3() {
    count3++;
  }
}
