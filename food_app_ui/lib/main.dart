import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';
import 'package:food_app_ui/details_page.dart';
import 'package:food_app_ui/landing_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        fontFamily: "Montserrat",
      ),
      home: LandingPage(),
    );
  }
}
