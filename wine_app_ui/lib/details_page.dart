import 'package:flutter/material.dart';
import 'package:wine_app_ui/constants.dart';

class DetailsPage extends StatelessWidget {
  final details;
  DetailsPage({this.details});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: (height / 2) + 230,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 10,
                        blurRadius: 40,
                        offset: Offset(0, 4),
                        color: Colors.grey.shade300)
                  ],
                  color: COLOR_WHITE,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(bottom: 40, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          Text(
                            "${details["name"]}",
                            style: TextStyle(
                              fontFamily: "AbrilFatface",
                              fontSize: 22,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "\$",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: details["bgColor"],
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "${details["price"]}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: details["bgColor"],
                              fontFamily: "Poppins",
                              fontSize: 30,
                            ),
                          )
                        ],
                      ),
                      FittedBox(
                        child: Text(
                          "Camofires + Grilled Cheese"
                          "\n"
                          "\n375ml of California Chardonnay"
                          "\nPair With: Fried Chicken Ramen Noodles Nachos Supreme"
                          "\nThink: Golden Apple Crisp + Rooftop Parties",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 35),
                height: (height / 2) + 30,
                decoration: BoxDecoration(
                  color: details["bgColor"],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                  ),
                ),
                child: SafeArea(
                    child: Hero(
                        tag: details["path"],
                        child: RotationTransition(
                            turns: AlwaysStoppedAnimation(30 / 360),
                            child:
                                Center(child: Image.asset(details["path"]))))),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 28,
                          color: COLOR_WHITE,
                        ),
                      ),
                      Icon(
                        Icons.shopping_cart,
                        size: 28,
                        color: COLOR_WHITE,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Essentially Geared Wine",
                      style: TextStyle(
                        fontFamily: "AbrilFatface",
                        fontSize: 22,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite,
                      color: details["bgColor"],
                      size: 28,
                    ),
                  ],
                ),
                FittedBox(
                  child: Text(
                    "Every Journey is An Opportunity"
                    "\n"
                    "\nWhetheer it\'s  inprompt gathering with good friends or"
                    "\nsustainably canning wine to keep up with your daily"
                    "\nadventures. Together we seek the uncommon",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
