import 'package:flutter/material.dart';


class CounterDisplay extends StatelessWidget {
  final int count;

  const CounterDisplay({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$count',
      style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    );
  }
}
