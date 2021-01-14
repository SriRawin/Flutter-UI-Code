import 'package:flutter/material.dart';
import 'package:real_estate_app_ui/UTILS/constants.dart';

class CustomBox extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final EdgeInsets padding;
  CustomBox({this.width, this.height, this.child, this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.all(8.0),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: COLOR_WHITE,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: COLOR_BLACK.withOpacity(0.4), width: 1),
      ),
      child: child,
    );
  }
}
