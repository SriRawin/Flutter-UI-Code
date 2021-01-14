import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget toPage;
  CustomRoute({this.toPage})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => toPage,
            transitionDuration: Duration(milliseconds: 300),
            reverseTransitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = 0.5;
              var end = 1.0;
              var curve = Curves.ease;
              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              return FadeTransition(
                opacity: animation.drive(tween),
                child: child,
              );
            });
}
