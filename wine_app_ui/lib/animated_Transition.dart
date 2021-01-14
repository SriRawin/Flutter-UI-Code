import 'package:flutter/material.dart';

class CreateRoute extends PageRouteBuilder {
  final Widget toPage;
  CreateRoute({this.toPage})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => toPage,
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var start = 0.0;
              var end = 1.0;
              var curve = CurveTween(curve: Curves.easeIn);
              var scaleTween = Tween(begin: start, end: end).chain(curve);
              var fadeTween = Tween(begin: start, end: end).chain(curve);
              return ScaleTransition(
                scale: animation.drive(scaleTween),
                child: FadeTransition(
                  opacity: animation.drive(fadeTween),
                  child: child,
                ),
              );
            });
}
