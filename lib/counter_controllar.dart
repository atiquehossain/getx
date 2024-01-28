import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var count2 = 0.obs;
  var count3 = 0.obs;

  void increment() {
     count++;
  //   update(['up1']);
  }

  void increment2() {
    count2++;
  //  update(['up2']);
  }

  void increment3() {
    count3++;
   // update(['up3']);
  }
}
