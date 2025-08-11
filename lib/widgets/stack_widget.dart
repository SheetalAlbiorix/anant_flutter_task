import 'package:flutter/material.dart';

Stack get stack => Stack(
  children: [
    Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Stack(
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              color: Colors.amber,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
            ),
          ],
        ),
      ),
    ),
  ],
);
