import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kayaking_ui/constants.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: COLOR_WHITE,
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            top: (screenHeight / 2),
            left: -20,
            right: -20,
            child: FittedBox(
              child: Text(
                "KayaK",
                style: TextStyle(
                    color: COLOR_GREY.withOpacity(0.14),
                    fontSize: screenWidth,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.chevron_left_rounded,
                      color: COLOR_DARK_BLUE,
                      size: 35,
                    ),
                    Text(
                      "Single Kayak",
                      style: TextStyle(
                        fontSize: 22,
                        letterSpacing: 0.5,
                        wordSpacing: 3,
                        fontWeight: FontWeight.w700,
                        color: COLOR_DARK_BLUE,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: COLOR_DARK_BLUE,
                      size: 35,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                FittedBox(
                  child: RichText(
                    text: TextSpan(
                      text: "We start at the kayak base at the port and"
                          " \npaddle past the Homlong Bay and towards"
                          "\nthe point where you can see waterfall.",
                      style: TextStyle(
                          color: COLOR_GREY,
                          fontSize: 18,
                          height: 1.5,
                          wordSpacing: 1,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Route",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 70,
                            top: 50,
                            left: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: COLOR_GREY, width: 3),
                                      image: DecorationImage(
                                        image: AssetImage("images/model.jpg"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: COLOR_WHITE,
                                      ),
                                      child: Icon(
                                        Icons.info_outline_rounded,
                                        color: COLOR_DARK_BLUE,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Duration",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: COLOR_GREY,
                                ),
                              ),
                              Text(
                                "2 Hours",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 19,
                                  color: COLOR_DARK_BLUE,
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Text(
                                "Maximum Age",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: COLOR_GREY,
                                ),
                              ),
                              Text(
                                "8 Years",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 19,
                                  color: COLOR_DARK_BLUE,
                                ),
                              ),
                              SizedBox(
                                height: 17,
                              ),
                              Text(
                                "Available Season",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: COLOR_GREY,
                                ),
                              ),
                              Text(
                                "May to Sep",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 19,
                                  color: COLOR_DARK_BLUE,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "From",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: COLOR_TEXT_BLUE,
                                ),
                              ),
                              Text(
                                "\$39.99",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 28,
                                  color: COLOR_DARK_BLUE,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              FlatButton(
                                  splashColor: COLOR_LIGHT_BLUE,
                                  color: Colors.lightBlueAccent,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Book Now",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 23),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Image.asset(
                              "images/kayak.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
