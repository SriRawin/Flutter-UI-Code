import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wine_app_ui/animated_Transition.dart';
import 'package:wine_app_ui/constants.dart';
import 'package:wine_app_ui/datamodel.dart';
import 'package:wine_app_ui/details_page.dart';

import 'details_card.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: COLOR_WHITE,
        body: Column(
          children: [
            Container(
              height: (height / 2) + 40,
              decoration: BoxDecoration(
                color: COLOR_WHITE,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    spreadRadius: 6,
                    blurRadius: 30,
                    color: Colors.grey.shade300,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey.shade500,
                            size: width * 0.06,
                          ),
                          Icon(
                            Icons.notifications,
                            color: Colors.grey.shade500,
                            size: width * 0.06,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Boutique",
                            style: TextStyle(
                              color: COLOR_BLACK,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.06,
                              fontFamily: "AbrilFatface",
                            ),
                          ),
                          Text(
                            "More",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: width * 0.035,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: boutique.length,
                            itemBuilder: (context, index) => InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        CreateRoute(
                                            toPage: DetailsPage(
                                          details: boutique[index],
                                        )));
                                  },
                                  child: DetailsCard(
                                    wineDetail: boutique[index],
                                  ),
                                ))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended",
                    style: TextStyle(
                      color: COLOR_BLACK,
                      fontWeight: FontWeight.w500,
                      fontSize: width * 0.06,
                      fontFamily: "AbrilFatface",
                    ),
                  ),
                  Text(
                    "More",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: width * 0.035,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: recommended.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        CreateRoute(
                            toPage: DetailsPage(
                          details: recommended[index],
                        )));
                  },
                  child: DetailsCard(
                    wineDetail: recommended[index],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
