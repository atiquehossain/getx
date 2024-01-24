import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0;
  var count2 = 0;
  var count3 = 0;

  void increment() {
     count++;
     update(['up1']);
  }

  void increment2() {
    count2++;
    update(['up2']);
  }

  void increment3() {
    count3++;
    update(['up3']);
  }
}
