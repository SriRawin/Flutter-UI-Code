import 'package:file_manager_ui/Utils/constants.dart';
import 'package:file_manager_ui/Views/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'File Manager',
      theme: ThemeData(
        fontFamily: "Poppins",
        primaryColor: KprimaryPurple,
        primarySwatch: Colors.deepPurple,
      ),
      home: HomeScreen(),
    );
  }
}
