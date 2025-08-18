import 'package:flutter/material.dart';

Widget get uiOrientation => Scaffold(
  body: OrientationBuilder(
    builder: (context, orientation) {
      return GridView.count(
        //grid with 3 and 4 columns for portrait and landscape mode respectively
        crossAxisCount: orientation == Orientation.portrait ? 3 : 4,
        // random item generator
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'A $index',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          );
        }),
      );
    },
  ),
);



