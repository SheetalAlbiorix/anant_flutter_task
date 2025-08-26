import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/helper/counter_controller.dart';

class CounterDisplay extends StatelessWidget {
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Obx(() => Text(
     'Counter : ${controller.count}',
      style: TextStyle(fontSize: 30),
    ));
  }
}