import 'package:flutter/material.dart';

InkWell get inkWell => InkWell(

    child: InkWell(
      onTap: (){
        print("InkWell is Tapped");
      },
      onDoubleTap: (){
        print("InkWell is DoubleTapped");
      },
      onLongPress: (){
        print("InkWell is Tapped LongPress");
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.orangeAccent,
        child: Center(child: Text("Click here",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w400))),
      ),
    ),

);