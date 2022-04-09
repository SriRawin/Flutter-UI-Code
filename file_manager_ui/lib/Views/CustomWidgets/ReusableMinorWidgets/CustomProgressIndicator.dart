import 'package:file_manager_ui/Utils/constants.dart';
import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  final double size;
  final Color trackColor;
  final double width;
  final double val;
  CustomProgressIndicator({
    required this.size,
    required this.trackColor,
    required this.width,
    required this.val,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: val),
        duration: Duration(milliseconds: 400),
        curve: Curves.linear,
        builder: (context, progress, child) {
          return CircularProgressIndicator(
            strokeWidth: width,
            backgroundColor: KinactiveTrackColor,
            valueColor: AlwaysStoppedAnimation<Color>(trackColor),
            value: double.parse(progress.toString()),
          );
        },
      ),
    );
  }
}
