import 'package:flutter/material.dart';

Widget get loaderWidget => Scaffold(

body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircularProgressIndicator(),
      SizedBox(height: 15),
      LinearProgressIndicator(),
    ],
  ),
),
);
