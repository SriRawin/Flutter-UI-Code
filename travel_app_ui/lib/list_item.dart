import 'package:flutter/material.dart';
import 'constants.dart';

class ListItem extends StatelessWidget {
  final placeDetails;
  ListItem({this.placeDetails});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 15, top: 25, bottom: 30),
      width: (width / 2) + 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: Colors.grey.shade400,
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(placeDetails["image"]),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ratingStar(placeDetails["rating"]),
                    Spacer(),
                    Text(
                      "More",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.9),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  "${placeDetails["name"]},",
                  style: TextStyle(
                    fontSize: 22,
                    height: 1,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
                Text(
                  "${placeDetails["location"]}",
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(.8),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "I was here",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.9),
                          fontWeight: FontWeight.w600),
                    ),
                    avatar(placeDetails["profile"]),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget ratingStar(double rating) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.2),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.white,
          size: 16,
        ),
        SizedBox(
          width: 2,
        ),
        Text(rating.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            )),
      ],
    ),
  );
}

Widget avatar(var details) {
  return CircleAvatar(
    backgroundImage: AssetImage(details),
    radius: 20,
  );
}
