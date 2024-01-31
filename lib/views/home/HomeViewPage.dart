import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_controller.dart';

class HomeViewPage extends GetView<HomeController> {
  const HomeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              "Data is " + controller.count.toString(),
              style: TextStyle(color: Colors.blue),
            )),
            Obx(() => Text(
              "Data is " + controller.count2.toString(),
              style: TextStyle(color: Colors.blue),
            )),
            Obx(() => Text(
              "Data is " + controller.count3.toString(),
              style: TextStyle(color: Colors.blue),
            )),

            SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: controller.increment, child: Text("update One")),
                ElevatedButton(
                    onPressed: controller.increment2, child: Text("update two")),
                ElevatedButton(
                    onPressed: controller.increment3,
                    child: Text("update three")),
              ],
            ),
            ElevatedButton(
                onPressed: () => _showModalBottomSheet(context),
                child: Text("update three")),
          ],
        ),),
    );
  }
}
void _showModalBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Modal BottomSheet'),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      );
    },
  );
}