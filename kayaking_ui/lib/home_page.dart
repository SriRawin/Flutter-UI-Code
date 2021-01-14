import 'package:flutter/material.dart';

import 'package:kayaking_ui/constants.dart';
import 'package:kayaking_ui/info_page.dart';
import 'package:kayaking_ui/page_transition.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 25,
                right: 25,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    shape: BoxShape.rectangle,
                    color: COLOR_WHITE.withOpacity(0.9),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search all activities",
                        style: TextStyle(
                          color: COLOR_GREY,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          wordSpacing: 1.5,
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: COLOR_GREY,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: (screenHeight / 2) - 220,
                right: 25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        color: COLOR_DARK_BLUE,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        "How can I help you?",
                        style: TextStyle(
                          fontSize: 14,
                          color: COLOR_WHITE,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: COLOR_WHITE, width: 3),
                            image: DecorationImage(
                              image: AssetImage("images/model.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 2,
                          right: 5,
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(color: COLOR_WHITE, width: 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: (screenHeight / 2) + 10,
                left: 25,
                right: 25,
                bottom: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Geiranger,",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: COLOR_WHITE.withOpacity(0.8),
                              letterSpacing: 0.8),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Norway",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: COLOR_WHITE,
                              letterSpacing: 0.8),
                        ),
                        Spacer(),
                        Icon(
                          Icons.location_on_sharp,
                          color: COLOR_WHITE,
                        )
                      ],
                    ),
                    Divider(
                      color: COLOR_WHITE,
                      thickness: 1,
                      height: 20,
                    ),
                    SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, CreateRoute(nextPage: InfoPage()));
                      },
                      child: Text(
                        "Discover Kayaking",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: COLOR_WHITE,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    FittedBox(
                      child: Text(
                        "Join us for a fun, relaxed and intimate"
                        "\nexperience of the majestic Geirangerfiord."
                        "\nWhatever the weather is like or whatever"
                        "\nprevious paddling experience you have.",
                        style: TextStyle(
                          color: COLOR_WHITE,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            height: 80,
                            width: 80,
                            image: AssetImage("images/1.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            height: 80,
                            width: 80,
                            image: AssetImage("images/2.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            height: 80,
                            width: 80,
                            image: AssetImage("images/3.jpg"),
                            fit: BoxFit.fill,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 55,
                            width: 55,
                            color: Colors.lightBlueAccent,
                            child: Center(
                              child: Text(
                                "38",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: COLOR_WHITE,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
