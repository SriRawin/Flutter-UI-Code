import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_ui/data.dart';

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = 250;
    double width = 250;

    return Container(
      height: 350,
      width: double.infinity,
      child: Center(
        child: Stack(
          fit: StackFit.loose,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: customShadow,
                ),
                child: Container(
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      boxShadow: imageShadow,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("images/master.jpg"),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: -220,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: customShadow,
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              right: -220,
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: customShadow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
