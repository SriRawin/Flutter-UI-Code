import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PillBox extends StatelessWidget {
  final color;

  final Widget child;
  PillBox({this.color, this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: child,
      )),
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
