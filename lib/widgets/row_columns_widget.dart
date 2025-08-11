import 'package:flutter/material.dart';

Column get rowcolumn =>  Column(
  children: <Widget>[
    SizedBox(height: 20),

    // 👇 Horizontal Scrollable Row
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
            margin: EdgeInsets.all(8),
            child: Center(child: Text("Box 1", style: TextStyle(color: Colors.white))),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
            margin: EdgeInsets.all(8),
            child: Center(child: Text("Box 2", style: TextStyle(color: Colors.white))),
          ),
          Container(
            color: Colors.orange,
            height: 100,
            width: 100,
            margin: EdgeInsets.all(8),
            child: Center(child: Text("Box 3", style: TextStyle(color: Colors.white))),
          ),
          Container(
            color: Colors.green,
            height: 100,
            width: 100,
            margin: EdgeInsets.all(8),
            child: Center(child: Text("Box 4", style: TextStyle(color: Colors.white))),
          ),
          Container(
            color: Colors.purple,
            height: 100,
            width: 100,
            margin: EdgeInsets.all(8),
            child: Center(child: Text("Box 5", style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    ),

    // 👇 Remaining Body (like previous)
    SizedBox(height: 20),
    Expanded(
      child:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text('First widget', style: TextStyle(color: Colors.white)),
                ),
                color: Colors.blue,
                height: 100,
                width: 200,
              ),
              //Implement of sizedBox in this code
              SizedBox(height: 20),
              Container(
                child: Container(
                  child: Center(
                    child: Text('Second widget', style: TextStyle(color: Colors.white)),
                  ),
                  color: Colors.amber,
                  height: 200,
                  width: 200,
                ),
              ),
              //Implement of sizedBox in this code
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: Text('Third widget', style: TextStyle(color: Colors.white)),
                ),
                color: Colors.orange,
                height: 100,
                width: 200,
              ),
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: Text('Third widget', style: TextStyle(color: Colors.white)),
                ),
                color: Colors.orange,
                height: 100,
                width: 200,
              ),
              SizedBox(height: 20),
              Container(
                child: Center(
                  child: Text('Third widget', style: TextStyle(color: Colors.white)),
                ),
                color: Colors.orange,
                height: 100,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    ),
  ],
);






