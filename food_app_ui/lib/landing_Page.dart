import 'package:flutter/material.dart';
import 'package:food_app_ui/constants.dart';

import 'list_item.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: COLOR_WHITE,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: COLOR_DARK_GREEN,
          size: 28,
        ),
        actions: [
          Container(
            height: 35,
            width: 38,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/avacodo_icon.jpg"))),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: COLOR_GREEN,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home_outlined,
                color: COLOR_WHITE.withOpacity(0.7),
                size: 34,
              ),
              Icon(
                Icons.search_outlined,
                color: COLOR_WHITE.withOpacity(0.7),
                size: 34,
              ),
              Icon(
                Icons.shopping_bag_outlined,
                color: COLOR_WHITE.withOpacity(0.7),
                size: 34,
              ),
              Icon(
                Icons.person_outline,
                color: COLOR_WHITE.withOpacity(0.7),
                size: 34,
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Good \nMorning",
              style: TextStyle(
                  letterSpacing: 1,
                  color: COLOR_GREEN,
                  fontWeight: FontWeight.bold,
                  fontSize: 42,
                  fontFamily: "LexendDeca"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Popular Food",
              style: TextStyle(
                color: COLOR_BLACK,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: width,
            height: height / 2.9,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: popularFoods.length,
                itemBuilder: (context, index) {
                  return ListItem(
                    width: width / 2,
                    height: height / 3.25,
                    subCardHeight: height / 4.25,
                    foodData: popularFoods[index],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Best Food",
              style: TextStyle(
                color: COLOR_BLACK,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: ListItem(
              height: width,
              subCardHeight: height / 2.5,
              width: width,
              foodData: bestFood,
            ),
          ),
        ],
      ),
    );
  }
}
