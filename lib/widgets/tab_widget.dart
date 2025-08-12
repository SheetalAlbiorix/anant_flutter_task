import 'package:flutter/material.dart';

Widget get tabBarWidget => DefaultTabController(
  length: 5 ,
  child: Scaffold(
  appBar: AppBar(
    foregroundColor: Colors.white,
    bottom: const  TabBar(
    indicatorColor: Colors.white,
    unselectedLabelColor: Colors.white,
    labelColor: Colors.white,
    tabs: [
      Tab(icon: Icon(Icons.music_note)),
      Tab(icon: Icon(Icons.music_video)),
      Tab(icon: Icon(Icons.camera_alt)),
      Tab(icon: Icon(Icons.grade)),
      Tab(icon: Icon(Icons.email)),
    ],
  ),
    title: const Text("It's TabController"),
    backgroundColor: Colors.green,

  ),

  body:  const TabBarView(children: [
    Icon(Icons.music_note, size: 100),
    Icon(Icons.music_video, size: 100),
    Icon(Icons.camera_alt, size: 100),
    Icon(Icons.grade, size: 100),
    Icon(Icons.email, size: 100),
  ],
  ),
),
);
