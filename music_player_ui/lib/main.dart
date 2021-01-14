import 'package:flutter/material.dart';
import 'package:music_player_ui/media_components.dart';
import 'package:music_player_ui/media_row.dart';
import 'package:music_player_ui/music_list.dart';
import 'data.dart';
import 'header.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      theme: ThemeData(
        fontFamily: "Circular",
        primaryColor: primaryColor,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            MusicList(),
            MediaComponents(),
            SizedBox(
              height: 35,
            ),
            MediaRow(),
          ],
        ),
      ),
    );
  }
}
