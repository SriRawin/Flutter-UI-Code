import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app_ui/UTILS/constants.dart';
import 'package:real_estate_app_ui/UTILS/currency_function.dart';
import 'package:real_estate_app_ui/UTILS/widget_functions.dart';
import 'border_box.dart';

class DescriptionBox extends StatelessWidget {
  final homeData;
  DescriptionBox({this.homeData});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        addVerticalSpace(10),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                homeData["image"],
              ),
            ),
            Positioned(
              right: 15,
              top: 15,
              child: CustomBox(
                height: 50,
                width: 50,
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: COLOR_DARK_BLUE,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        addVerticalSpace(15),
        Row(
          children: [
            Text(
              "${formatCurrency(homeData["amount"])}",
              style: textTheme.headline1,
            ),
            addHorizontalSpace(10),
            Text(
              "${homeData["address"]}",
              style: textTheme.bodyText2,
            ),
          ],
        ),
        addVerticalSpace(10),
        Row(
          children: [
            Text(
              "${homeData["bedrooms"]} bedrooms / ${homeData["bathrooms"]} bathrooms / ${homeData["area"]} sqft",
              style: textTheme.headline4,
            ),
          ],
        ),
        addVerticalSpace(10),
      ],
    );
  }
}
