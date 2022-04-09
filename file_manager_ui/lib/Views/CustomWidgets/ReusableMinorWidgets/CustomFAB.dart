import 'package:file_manager_ui/Utils/constants.dart';
import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(builder: (context, size) {
      return Container(
        height: size.height * 0.07,
        width: size.height * 0.07,
        decoration: BoxDecoration(
            color: KdarkGreen,
            shape: BoxShape.circle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: KinactiveTrackColor,
                offset: Offset(4, 4),
                blurRadius: 4,
                spreadRadius: 4,
              ),
            ]),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: size.height * 0.026,
        ),
      );
    });
  }
}
