import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';
import 'package:food_app_ui/counter.dart';

class DetailsPage extends StatelessWidget {
  final info;
  DetailsPage({this.info});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget ratingStar(var iconColor) => Icon(
          Icons.star,
          size: 17,
          color: iconColor,
        );
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: COLOR_WHITE,
          ),
          Container(
            height: height / 3.2,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/bg.jpg"),
                fit: BoxFit.fill,
              ),
              color: COLOR_GREEN,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120)),
            ),
          ),
          Container(
            height: height / 3.2,
            decoration: BoxDecoration(
              color: COLOR_GREEN.withOpacity(0.87),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120)),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: COLOR_WHITE.withOpacity(0.7),
                          size: 33,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: COLOR_WHITE.withOpacity(0.7),
                        size: 33,
                      ),
                    ],
                  ),
                  Hero(
                    tag: info["image"],
                    child: Image(
                      height: height / 2.6,
                      width: width,
                      fit: BoxFit.contain,
                      image: AssetImage(info["image"]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    info["name"],
                    style: TextStyle(
                      color: COLOR_BLACK,
                      fontWeight: FontWeight.bold,
                      fontFamily: "LexendDeca",
                      letterSpacing: 0.8,
                      wordSpacing: 1,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        info["rating"].toString(),
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      ratingStar(
                        info["rating"] >= 1
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      ratingStar(
                        info["rating"] >= 2
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      ratingStar(
                        info["rating"] >= 3
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      ratingStar(
                        info["rating"] >= 4
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      ratingStar(
                        info["rating"] >= 5
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "\$",
                            style: TextStyle(
                              fontSize: 26,
                              color: COLOR_BLACK,
                            ),
                            children: [
                              TextSpan(
                                text: "${info["price"].toString()}.00",
                                style: TextStyle(
                                  fontFamily: "LexendDeca",
                                  fontSize: 28,
                                  color: COLOR_BLACK,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ]),
                      ),
                      Counter(),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "About the food",
                    style: TextStyle(
                      color: COLOR_BLACK,
                      fontWeight: FontWeight.w600,
                      fontFamily: "LexendDeca",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FittedBox(
                    child: Text(
                      "This light home-cooked food is low salt and low"
                      "\noil with balanced nutrition, selected from high-"
                      "\nquality ingredients.This delicious food maybe"
                      "\nyour best healthy choice.",
                      style: TextStyle(
                        color: Colors.grey.shade700.withOpacity(0.5),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    splashColor: COLOR_GREEN_GREY,
                    onPressed: () {},
                    minWidth: width,
                    height: 60,
                    color: COLOR_GREEN,
                    child: RichText(
                      text: TextSpan(
                          text: "Total  ",
                          style: TextStyle(
                            color: COLOR_WHITE,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(
                              text: " \$",
                              style: TextStyle(
                                fontSize: 24,
                                color: COLOR_WHITE,
                              ),
                            ),
                            TextSpan(
                              text: "${info["price"] * 3}.00",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: "LexendDeca",
                                  color: COLOR_WHITE,
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
