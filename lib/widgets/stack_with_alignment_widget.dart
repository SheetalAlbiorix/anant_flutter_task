import 'package:flutter/material.dart';

Stack get stackAlignment => Stack(
  children: [
    Center(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            // Bottom Red Container
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.red,
                padding: EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Anant",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            // Orange Container
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 230,
                height: 230,
                color: Colors.orange,
                padding: EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Raj",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            // Black Image Container
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1547721064-da6cfb341d50"),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(4),
                  color: Colors.black54,
                  child: Text(
                    "GeeksforGeeks",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ]
);