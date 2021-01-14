import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class DetailsCard extends StatelessWidget {
  final wineDetail;
  DetailsCard({this.wineDetail});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Widget starRating(var iconColor) => Icon(
          Icons.star,
          color: iconColor,
          size: 17,
        );
    var rating = wineDetail["rating"];
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, left: 20),
      child: Stack(
        children: [
          Card(
            color: wineDetail["bgColor"],
            margin: EdgeInsets.all(0),
            elevation: 1,
            shadowColor: Colors.grey.shade200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                  width: width / 2.15,
                  child: Row(
                    children: [
                      Text(
                        "\$",
                        style: TextStyle(
                            color: COLOR_WHITE,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontSize: 15),
                      ),
                      Text(
                        wineDetail["price"].toString(),
                        style: TextStyle(
                            color: COLOR_WHITE,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            fontSize: 20),
                      ),
                      Spacer(),
                      Icon(
                        Icons.shopping_cart_rounded,
                        color: COLOR_WHITE,
                        size: 23,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10, top: 0),
                    width: width / 2.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Hero(
                      tag: wineDetail["path"],
                      child: Center(
                        child: Image.asset(
                          wineDetail["path"],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: width / 2.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 9.0, top: 5, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            wineDetail["name"],
                            style: TextStyle(
                              fontFamily: "AbrilFatface",
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.7,
                              color: COLOR_BLACK,
                            ),
                          ),
                          Text(
                            wineDetail["description"],
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              rating >= 1
                                  ? starRating(Color(0xff059796))
                                  : starRating(COLOR_DS_BLUE),
                              rating >= 2
                                  ? starRating(Color(0xff059796))
                                  : starRating(COLOR_DS_BLUE),
                              rating >= 3
                                  ? starRating(Color(0xff059796))
                                  : starRating(COLOR_DS_BLUE),
                              rating >= 4
                                  ? starRating(Color(0xff059796))
                                  : starRating(COLOR_DS_BLUE),
                              rating >= 5
                                  ? starRating(Color(0xff059796))
                                  : starRating(COLOR_DS_BLUE),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                wineDetail["rating"].toString(),
                                style: TextStyle(
                                    color: COLOR_LIGHT_BLUE,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Positioned(
          //   top: 10,
          //   right: 13,
          //   left: 13,
          //   child: Row(
          //     children: [
          //       Text(
          //         "\$",
          //         style: TextStyle(
          //             color: COLOR_WHITE,
          //             fontWeight: FontWeight.w500,
          //             fontFamily: "Poppins",
          //             fontSize: 15),
          //       ),
          //       Text(
          //         wineDetail["price"].toString(),
          //         style: TextStyle(
          //             color: COLOR_WHITE,
          //             fontWeight: FontWeight.w500,
          //             fontFamily: "Poppins",
          //             fontSize: 20),
          //       ),
          //       Spacer(),
          //       Icon(
          //         Icons.shopping_cart_rounded,
          //         color: COLOR_WHITE,
          //         size: 23,
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
