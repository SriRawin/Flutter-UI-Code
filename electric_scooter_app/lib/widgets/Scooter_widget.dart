import 'dart:math' as math;
import 'dart:ui';

import 'package:electric_scooter_app/responsive_template.dart';
import 'package:flutter/material.dart';

class ScooterWidget extends StatefulWidget {
  final double dragPercent;
  final double slideOutPercent;
  final Animation<double> fadePercent;
  const ScooterWidget(
      {this.dragPercent, this.slideOutPercent, this.fadePercent});

  @override
  _ScooterWidgetState createState() => _ScooterWidgetState();
}

class _ScooterWidgetState extends State<ScooterWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _slideController;
  Animation<double> _slideAnimation;
  Offset _bikeOffset = Offset(0, 0);
  Offset _textOffset = Offset(0, 0);
  Offset _cardOffset = Offset(1, -1);
  @override
  void initState() {
    _slideController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1200,
      ),
    );
    _slideController.addListener(() {
      setState(() {
        _bikeOffset = Offset(-1 + _slideAnimation.value, 0);
        _textOffset = Offset(1 - _slideAnimation.value, 0);
      });
    });
    _slideController.forward();
    _slideAnimation =
        CurvedAnimation(parent: _slideController, curve: Curves.ease);
    super.initState();
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(ScooterWidget oldWidget) {
    final double bikeDragPercent = widget.dragPercent;
    final double slideOutPercent = widget.slideOutPercent;
    if (oldWidget.dragPercent != bikeDragPercent) {
      _bikeOffset = Offset(-0.3 * bikeDragPercent, -0.3 * bikeDragPercent);
      _cardOffset = Offset(1 - bikeDragPercent, (1 - bikeDragPercent) * -0.2);
    } else if (oldWidget.slideOutPercent != slideOutPercent) {
      double dx = lerpDouble(-0.4, 1.2, slideOutPercent);
      _bikeOffset = Offset(dx, -0.3);
      _cardOffset = Offset(1 * slideOutPercent, 0);
      _textOffset = Offset(slideOutPercent, 0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(
      builder: (context, size) {
        return FadeTransition(
          opacity: widget.fadePercent,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: FractionalTranslation(
                  translation: _textOffset,
                  child: Text(
                    "GO",
                    style: TextStyle(
                      fontSize: size.width * 0.85,
                      fontFamily: "Dosis",
                      color: Color(0xD13F84D7),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: size.height * 0.16,
                child: FractionalTranslation(
                  translation: _bikeOffset,
                  child: Transform.scale(
                    scale: 1 + (widget.dragPercent / 1.5),
                    child: Transform(
                      transform: Matrix4.rotationY(math.pi),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "images/ather.png",
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: _slideAnimation.value * size.height * 0.1,
                child: Opacity(
                  opacity: 1 + (-widget.dragPercent),
                  child: Text(
                    "gogoro",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w800,
                      fontSize: size.height * 0.04,
                    ),
                  ),
                ),
              ),
              FractionalTranslation(
                translation: _cardOffset,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.048,
                      vertical: size.width * 0.052,
                    ),
                    width: size.width,
                    height: size.height * 0.11,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          size.height * 0.03,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Transform.scale(
                            scale: widget.dragPercent,
                            child: Container(
                              height: size.height * 0.11,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  // stops: [-4, 1],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: <Color>[
                                    Color(0x703f84d7),
                                    Color(0xff295CBA),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    size.height * 0.03,
                                  ),
                                ),
                              ),
                              child: Icon(
                                Icons.power_settings_new_rounded,
                                color: Colors.white,
                                size: size.height * 0.036,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.18,
                              ),
                              Text(
                                "Swipe to off",
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: size.height * 0.025,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.04,
                              ),
                              Icon(
                                Icons.arrow_forward_rounded,
                                size: size.height * 0.035,
                                color: Colors.black45,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
