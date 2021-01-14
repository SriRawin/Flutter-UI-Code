import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: COLOR_GREEN_GREY.withOpacity(0.7),
        onPressed: () {},
        child: Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: COLOR_GREEN_GREY.withOpacity(0.7),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: COLOR_GREEN,
                ),
              ),
              child: Icon(
                Icons.remove,
                size: 20,
                color: COLOR_GREEN,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "3",
              style: TextStyle(
                color: COLOR_GREEN,
                fontFamily: "LexendDeca",
                fontSize: 28,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: COLOR_GREEN,
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2,
                  color: COLOR_GREEN,
                ),
              ),
              child: Icon(
                Icons.add,
                size: 20,
                color: COLOR_GREEN_GREY,
              ),
            ),
          ],
        ));
  }
}
