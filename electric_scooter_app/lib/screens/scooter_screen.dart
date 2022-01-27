import 'dart:math';
import 'dart:ui';

import 'package:electric_scooter_app/responsive_template.dart';
import 'package:electric_scooter_app/screens/BatteryScreen.dart';
import 'package:electric_scooter_app/widgets/Scooter_widget.dart';
import 'package:flutter/material.dart';

class ScooterScreen extends StatefulWidget {
  final AnimationController slideOutController;
  ScooterScreen({this.slideOutController});
  @override
  _ScooterScreenState createState() => _ScooterScreenState();
}

class _ScooterScreenState extends State<ScooterScreen>
    with SingleTickerProviderStateMixin {
  AnimationController dragController;
  Animation<double> fadeAnimation;
  Animation<double> batteryFade;
  @override
  void initState() {
    dragController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    fadeAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: widget.slideOutController,
        curve: Interval(
          0.0,
          0.8,
          curve: Curves.ease,
        ),
      ),
    );
    batteryFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: widget.slideOutController,
        curve: Interval(
          0.0,
          1.0,
          curve: Curves.ease,
        ),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    dragController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(
      builder: (context, size) {
        return AnimatedBuilder(
          animation: dragController,
          builder: (context, child) {
            return Transform.scale(
              alignment: Alignment.topRight,
              scale: lerpDouble(1.0, .8, dragController.value),
              child: GestureDetector(
                onVerticalDragUpdate: (details) {
                  dragController.value -= details.primaryDelta / size.height;
                },
                onVerticalDragEnd: (details) {
                  if (dragController.isAnimating ||
                      dragController.status == AnimationStatus.completed)
                    return;
                  final double flingVelocity =
                      details.velocity.pixelsPerSecond.dy / size.height;
                  if (flingVelocity < 0) {
                    dragController.fling(velocity: max(2.0, -flingVelocity));
                  } else if (flingVelocity > 0) {
                    dragController.fling(velocity: min(-2.0, -flingVelocity));
                  } else {
                    dragController.fling(
                        velocity: dragController.value < 0.5 ? -2.0 : 2.0);
                  }
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        dragController.value * (size.height * 0.06),
                      ),
                    ),
                    color: Color(0xffDCE5FF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 25,
                        spreadRadius: 2,
                        offset: Offset(5, 8),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      ScooterWidget(
                        dragPercent: dragController.value,
                        slideOutPercent: widget.slideOutController.value,
                        fadePercent: fadeAnimation,
                      ),
                      BatteryScreen(
                        bikeFade: batteryFade,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
