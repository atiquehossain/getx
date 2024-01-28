import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controllar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final dependency = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text(
                "Data is " + dependency.count.toString(),
                style: TextStyle(color: Colors.blue),
              )),
          Obx(() => Text(
                "Data is " + dependency.count2.toString(),
                style: TextStyle(color: Colors.blue),
              )),
          Obx(() => Text(
                "Data is " + dependency.count3.toString(),
                style: TextStyle(color: Colors.blue),
              )),

          SizedBox(height: 40,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: dependency.increment, child: Text("update One")),
              ElevatedButton(
                  onPressed: dependency.increment2, child: Text("update two")),
              ElevatedButton(
                  onPressed: dependency.increment3,
                  child: Text("update three")),
            ],
          )
        ],
      )),
    );
  }
}
