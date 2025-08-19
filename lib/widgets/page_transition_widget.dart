import 'package:flutter/material.dart';
import 'package:flutter_demo/helper/transitionFunc.dart';



Widget get pageTransitionWidget => const Homepage();

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
               // Navigate to Page 2 with a custom transition
                Navigator.of(context).push(createRoute());
              },
              child: const Text(
                'Go to Page 2 (Slide)',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                // Navigate to Page 2 with a custom transition
                Navigator.of(context).push(fadeRoute());
              },
              child: const Text(
                'Go to Page 2 (Fade)',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                // Navigate to Page 2 with a custom transition
                Navigator.of(context).push(scaleRoute());
              },
              child: const Text(
                'Go to Page 2 (Scale)',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                // Navigate to Page 2 with a custom transition
                Navigator.of(context).push(rotationRoute());
              },
              child: const Text(
                'Go to Page 2 (Rotation)',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  final String title;
  const Page2({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}