import 'package:file_manager_ui/Utils/constants.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
        data: SliderThemeData(
          thumbShape: SliderComponentShape.noThumb,
          overlayShape: SliderComponentShape.noOverlay,
          minThumbSeparation: 0,
          tickMarkShape: SliderTickMarkShape.noTickMark,
          trackHeight: 5,
          activeTrackColor: KdarkGreen,
          trackShape: RoundedRectSliderTrackShape(),
          inactiveTrackColor: Colors.white30,
        ),
        child: Slider(
          min: 0,
          max: 100,
          onChanged: (double value) {},
          value: 45,
        ));
  }
}
