import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/counterDisplay_widget.dart';
import 'package:flutter_demo/widgets/actionButton_widget.dart';


// 🌟 Main Counter Page (Stateful)
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

// 🌟 State Class
class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  // 🔁 Increment function
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // 🔄 Reset function
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pressed the button this many times:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),

            // 👇 Counter display widget
            CounterDisplay(count: _counter),

            const SizedBox(height: 24),

            // 👇 Action buttons widget
            ActionButtons(
              onIncrement: _incrementCounter,
              onReset: _resetCounter,
            ),
          ],
        ),
      );
  }
}


