import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final Widget widgetDemo;

  const DetailScreen({super.key, required this.title, required this.widgetDemo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Padding(padding: EdgeInsets.all(16), child: widgetDemo)),
    );
  }
}