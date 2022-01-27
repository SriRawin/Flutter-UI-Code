import 'dart:math';
import 'dart:ui';

import 'package:electric_scooter_app/responsive_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  final ValueChanged<double> onChange;

  MapScreen({this.onChange});
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _mapController;
  @override
  void initState() {
    _mapController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1200,
      ),
    )..addListener(() {
        setState(() {
          widget.onChange(_mapController.value);
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(
      builder: (context, size) {
        return Positioned(
          height:
              lerpDouble(size.height * 0.46, size.height, _mapController.value),
          bottom: 0,
          left: 0,
          right: 0,
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onVerticalDragUpdate: (details) {
              _mapController.value -= details.primaryDelta / size.height;
            },
            onVerticalDragEnd: (details) {
              if (_mapController.isAnimating ||
                  _mapController.status == AnimationStatus.completed) return;
              final double flingVelocity =
                  details.velocity.pixelsPerSecond.dy / size.height;
              if (flingVelocity < 0) {
                _mapController.fling(velocity: max(2.0, flingVelocity));
              } else if (flingVelocity > 0) {
                _mapController.fling(velocity: min(-2.0, flingVelocity));
              } else {
                _mapController.fling(
                    velocity: _mapController.value < 0.5 ? -2.0 : 2.0);
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                    (1 - _mapController.value) * (size.height * 0.04)),
                topLeft: Radius.circular(
                    (1 - _mapController.value) * (size.height * 0.04)),
              ),
              child: Image.asset(
                "images/map.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
