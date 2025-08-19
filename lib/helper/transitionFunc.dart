import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/page_transition_widget.dart';


Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Page2(title: "Slide Transition"),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween =
      Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route fadeRoute() {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => const Page2(title: "Fade Transition"),
    transitionsBuilder: (_, animation, __, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}

Route scaleRoute() {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => const Page2(title: "Scale Transition"),
    transitionsBuilder: (_, animation, __, child) {
      final tween = Tween<double>(begin: 0.0, end: 1.0)
          .chain(CurveTween(curve: Curves.easeInOut));
      return ScaleTransition(scale: animation.drive(tween), child: child);
    },
  );
}

Route rotationRoute() {
  return PageRouteBuilder(
    pageBuilder: (_, __, ___) => const Page2(title: "Rotation Transition"),
    transitionsBuilder: (_, animation, __, child) {
      return RotationTransition(turns: animation, child: child);
    },
  );
}