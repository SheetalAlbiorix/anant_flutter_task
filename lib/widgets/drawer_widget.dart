import 'package:flutter/material.dart';

Drawer get drawer => Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
               decoration: BoxDecoration(
                color: Colors.orange ,
                image: DecorationImage(
                  image: AssetImage("assets/images/f.png"),
                  fit: BoxFit.cover,
                ) ,
            ),
           child: Text("Hello Drawer",
              style: TextStyle(
                 color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold

                ),
               ),
              ),

            ListTile(
              title: Text("Item1"),leading : Icon(Icons.people)

            ),
            ListTile(
              title: Text("Item2"),leading: Icon(Icons.mail),
            )
          ],
        ),
);