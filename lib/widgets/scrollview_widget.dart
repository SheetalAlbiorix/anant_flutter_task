import 'package:flutter/material.dart';

SingleChildScrollView get singlechildscroll => SingleChildScrollView(
  // Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.black,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.orangeAccent,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 11),
            height: 200,
            width: 200,
            color: Colors.purple,
          )

        ],
      ),
    ),
  // ),
);