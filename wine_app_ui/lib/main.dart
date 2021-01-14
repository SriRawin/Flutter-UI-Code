import 'package:flutter/material.dart';
import 'package:wine_app_ui/constants.dart';
import 'package:wine_app_ui/details_page.dart';

import 'landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wine App',
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}
