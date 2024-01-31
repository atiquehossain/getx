import 'package:get/get.dart';
import 'package:getx/home_controller.dart';

class Global {
  static Future<void> init() async {

    // will put immediately
    // Get.put<HomeController>(HomeController());
    //will put when you need it
    Get.lazyPut(() => HomeController());
  }
}
