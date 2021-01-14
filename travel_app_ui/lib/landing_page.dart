import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants.dart';
import 'data_model.dart';
import 'list_item.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 15),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.search_outlined,
              color: COLOR_ORANGE,
              size: 27,
            ),
            Icon(
              Icons.home_outlined,
              color: Colors.grey.withOpacity(0.8),
              size: 27,
            ),
            Icon(
              Icons.star_border_outlined,
              color: Colors.grey.withOpacity(0.8),
              size: 28,
            ),
            Icon(
              Icons.calendar_today_outlined,
              color: Colors.grey.withOpacity(0.8),
              size: 22,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.donut_large,
                    size: 27,
                    color: COLOR_BLACK.withOpacity(0.5),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundImage: AssetImage("images/profilepic.jpg"),
                      ),
                      Positioned(
                        bottom: 2,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 5),
              child: RichText(
                text: TextSpan(
                  text: "Where",
                  style: TextStyle(
                    color: COLOR_ORANGE.withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                    height: 1.2,
                  ),
                  children: [
                    TextSpan(
                      text: "\nwill you go"
                          "\ntoday",
                      style: TextStyle(
                        color: COLOR_BLACK.withOpacity(0.7),
                        fontSize: 40,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              height: 70,
              width: width,
              decoration: BoxDecoration(
                color: COLOR_GREY.withOpacity(0.6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.search_outlined,
                      size: 25,
                      color: Colors.grey.shade400,
                    ),
                    Text(
                      "What would you like to discover?",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.grey.shade400,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 10, right: 15, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: COLOR_BLACK.withOpacity(0.75),
                    ),
                  ),
                  Icon(
                    Icons.more_horiz_rounded,
                    size: 27,
                    color: COLOR_BLACK.withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: mostPopular.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ListItem(placeDetails: mostPopular[index]);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
