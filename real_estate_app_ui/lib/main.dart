import 'package:flutter/material.dart';
import 'package:real_estate_app_ui/UTILS/constants.dart';
import 'landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate App',
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        fontFamily: "Montserrat",
        textTheme: TEXT_THEME_DEFAULT,
      ),
      home: LandingPage(),
    );
  }
}
