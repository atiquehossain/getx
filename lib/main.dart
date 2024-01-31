import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/views/home/HomeViewPage.dart';

import 'global_controller.dart';
import 'home_controller.dart';

void main() {
  Global.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeViewPage(),
    );
  }
}


