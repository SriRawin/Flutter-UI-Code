import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player_ui/data.dart';

class MediaRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: buttonShadow,
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: ringColor,
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: secondaryShadow,
                ),
                child: Icon(
                  Icons.loop,
                  color: iconColor,
                  size: 28,
                ),
              ),
            ),
          ),
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: buttonShadow,
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: shadowGrey,
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: secondaryShadow,
                ),
                child: Icon(
                  Icons.skip_previous,
                  color: iconColor,
                  size: 28,
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: buttonShadow,
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: ringColor,
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: secondaryShadow,
                ),
                child: Icon(
                  Icons.pause,
                  color: iconColor,
                  size: 45,
                ),
              ),
            ),
          ),
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: buttonShadow,
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: shadowGrey,
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: secondaryShadow,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.skip_next,
                  color: iconColor,
                  size: 28,
                ),
              ),
            ),
          ),
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: primaryColor,
              boxShadow: buttonShadow,
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: ringColor,
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                  boxShadow: secondaryShadow,
                ),
                child: Icon(
                  Icons.shuffle,
                  color: iconColor,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
