import 'package:flutter/material.dart';

Widget get appContentWidget => Scaffold(
  body: SafeArea(
    child: Center(
      child: Text(
        "Welcome to Fonts",
        style: TextStyle(
          fontFamily: 'Pacifico',
          fontSize: 40.0,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
);
