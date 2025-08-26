import 'package:flutter/material.dart';
import 'package:flutter_demo/main/getxSecondScreen.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/helper/counter_controller.dart';


class ActionButtons extends StatelessWidget {
  final CounterController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: 'increment',
          onPressed: controller.increment,
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          heroTag: 'navigate',
          onPressed: () => Get.to(GetXSecondScreen()),
          child: const Icon(Icons.arrow_forward),
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          heroTag: 'reset',
          onPressed: controller.reset,
          child: const Icon(Icons.refresh),
        ),
      ],
    );
  }
}