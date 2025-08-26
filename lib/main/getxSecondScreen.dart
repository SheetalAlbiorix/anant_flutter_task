import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/helper/counter_controller.dart';


class GetXSecondScreen extends StatelessWidget {
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Obx(() => Text(
          'Current Count: ${controller.count}',
          style: const TextStyle(fontSize: 30),
        )),
      ),
    );
  }
}

