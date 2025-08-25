
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {

  final VoidCallback onIncrement;
  final VoidCallback onReset;

  const ActionButtons({
    super.key,
    required this.onIncrement,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onIncrement,
          child: const Text('Increment'),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: onReset,
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
