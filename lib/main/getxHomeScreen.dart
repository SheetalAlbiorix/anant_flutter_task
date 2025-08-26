import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_demo/helper/counter_controller.dart';
import 'package:flutter_demo/widgets/getx_counterDisplay_widget.dart';
import 'package:flutter_demo/widgets/getx_actionButton_widget.dart';

class GetXHomeScreen extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(child: CounterDisplay()
      ),
      floatingActionButton: ActionButtons(),
    );
  }
}
