import 'package:flutter/material.dart';

Color primaryColor = Color(0xffcbaca3);
Color customBlue = Color(0xff159eb2);
Color iconColor = Color(0xff693429);
Color shadowBrown = Color(0xffa56e60);
Color shadowGrey = Colors.grey[400];
Color ringColor = Color(0xffa56e60);

List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white,
      offset: Offset(-2, -5),
      spreadRadius: 1,
      blurRadius: 15),
  BoxShadow(
    color: shadowBrown,
    offset: Offset(5, 5),
    spreadRadius: 6,
    blurRadius: 30,
  ),
];
List<BoxShadow> buttonShadow = [
  BoxShadow(
      color: Colors.grey[300],
      offset: Offset(-1, -4),
      spreadRadius: 1,
      blurRadius: 10),
  BoxShadow(
    color: shadowBrown,
    offset: Offset(4, 4),
    spreadRadius: 2,
    blurRadius: 25,
  ),
];
List<BoxShadow> imageShadow = [
  BoxShadow(
      color: customBlue,
      offset: Offset(0.1, 0.1),
      spreadRadius: 0.1,
      blurRadius: 3),
];
List<BoxShadow> secondaryShadow = [
  BoxShadow(
    color: iconColor,
    offset: Offset(4, 4),
    spreadRadius: 2,
    blurRadius: 15,
  )
];
