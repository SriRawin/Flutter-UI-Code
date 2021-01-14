import 'package:flutter/material.dart';
import 'package:real_estate_app_ui/UTILS/constants.dart';
import 'package:real_estate_app_ui/UTILS/widget_functions.dart';
import 'package:real_estate_app_ui/description_box.dart';
import 'package:real_estate_app_ui/pill_box.dart';
import 'border_box.dart';
import 'package:real_estate_app_ui/UTILS/home_data.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double padding = 20;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(padding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomBox(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.menu,
                            color: COLOR_DARK_BLUE,
                            size: 30,
                          ),
                        ),
                        CustomBox(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.settings,
                            color: COLOR_DARK_BLUE,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: Text("City", style: textTheme.bodyText1),
                  ),
                  addVerticalSpace(10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: padding),
                    child: Text("San Fransisco", style: textTheme.headline1),
                  ),
                  Divider(
                    indent: padding,
                    endIndent: padding,
                    thickness: 2,
                    height: 30,
                    color: COLOR_GREY.withOpacity(0.4),
                  ),
                  addVerticalSpace(5),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        "<\$200,000",
                        "For Sale",
                        "3-4 Beds",
                        "1-2 BathRooms"
                      ]
                          .map((e) => PillBox(
                                child: Text(
                                  e,
                                  style: textTheme.headline5,
                                ),
                                color: COLOR_GREY.withOpacity(0.15),
                              ))
                          .toList(),
                    ),
                  ),
                  addVerticalSpace(padding),
                  Expanded(
                    child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: padding),
                        physics: BouncingScrollPhysics(),
                        itemCount: RE_DATA.length,
                        itemBuilder: (context, index) {
                          return DescriptionBox(
                            homeData: RE_DATA[index],
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
