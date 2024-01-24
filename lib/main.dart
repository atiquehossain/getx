import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/counter_controllar.dart';

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
          GetBuilder<CounterController>(
              id: "up1",
              builder: (controller) {
                print("Update One");
                return Text(
                  "Data is " + controller.count.toString(),
                  style: TextStyle(color: Colors.blue),
                );
              }),
          SizedBox(
            height: 10,
          ),
          GetBuilder<CounterController>(
              id: "up2",
              builder: (controller) {
                print("Update two");
                return Text(
                  "Data is " + controller.count2.toString(),
                  style: TextStyle(color: Colors.blue),
                );
              }),
          SizedBox(
            height: 10,
          ),
          GetBuilder<CounterController>(
              id: "up3",
              builder: (controller) {
                print("Update three");
                return Text(
                  "Data is " + controller.count3.toString(),
                  style: TextStyle(color: Colors.blue),
                );
              }),
          SizedBox(
            height: 24,
          ),
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
