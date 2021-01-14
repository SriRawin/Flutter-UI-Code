import 'package:flutter/material.dart';
import 'package:food_app_ui/customRoute.dart';
import 'package:food_app_ui/details_page.dart';
import 'constants.dart';

class ListItem extends StatelessWidget {
  final double height;
  final double width;
  final double subCardHeight;

  final foodData;
  ListItem({this.width, this.height, this.foodData, this.subCardHeight});
  @override
  Widget build(BuildContext context) {
    Widget ratingStar(var iconColor) => Icon(
          Icons.star,
          size: 16,
          color: iconColor,
        );

    return Padding(
      padding: const EdgeInsets.only(left: 15.0, top: 10),
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 6),
                  color: Colors.grey.shade300,
                  spreadRadius: 1,
                  blurRadius: 15,
                ),
              ],
              color: COLOR_WHITE,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    foodData["name"],
                    style: TextStyle(
                        color: COLOR_BLACK,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        foodData["rating"].toString(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      ratingStar(
                        foodData["rating"] >= 1
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      ratingStar(
                        foodData["rating"] >= 2
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      ratingStar(
                        foodData["rating"] >= 3
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      ratingStar(
                        foodData["rating"] >= 4
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      ratingStar(
                        foodData["rating"] >= 5
                            ? COLOR_GREEN
                            : COLOR_GREEN.withOpacity(0.5),
                      ),
                      Spacer(),
                      Text(
                        "\$${foodData["price"].toString()}",
                        style: TextStyle(
                          fontSize: 18,
                          color: COLOR_BLACK,
                          fontWeight: FontWeight.w800,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: width,
            height: subCardHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [
                  COLOR_WHITE,
                  COLOR_GREEN_GREY,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 1],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CustomRoute(
                      toPage: DetailsPage(
                        info: foodData,
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: foodData["image"],
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image(
                      image: AssetImage(foodData["image"]),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: (height - subCardHeight) + 5,
            right: 15,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: COLOR_WHITE,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(0, 4),
                    spreadRadius: 2,
                    blurRadius: 6,
                  )
                ],
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
