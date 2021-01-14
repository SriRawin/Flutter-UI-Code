import 'package:flutter/material.dart';

import 'data.dart';

class MediaComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Master",
          style: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.w600,
            color: iconColor,
          ),
        ),
        SizedBox(
          height: 1,
        ),
        Text(
          "Vaathi Raid",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: iconColor,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 33),
            child: SliderTheme(
              data: SliderThemeData(
                trackHeight: 5,
                overlayShape: RoundSliderOverlayShape(
                  overlayRadius: 10,
                ),
                thumbShape: RoundSliderThumbShape(
                  enabledThumbRadius: 5,
                ),
              ),
              child: Slider(
                  activeColor: iconColor,
                  inactiveColor: shadowBrown.withOpacity(0.3),
                  min: 0,
                  max: 100,
                  value: 40,
                  onChanged: (v) {}),
            )),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "2:30",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: iconColor,
                ),
              ),
              Text(
                "5:04",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: iconColor,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
