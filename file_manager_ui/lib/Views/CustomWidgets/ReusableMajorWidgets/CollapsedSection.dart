import 'package:file_manager_ui/Utils/constants.dart';
import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMinorWidgets/CustomSlider.dart';
import 'package:flutter/material.dart';

class CollapsedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(builder: (context, size) {
      return SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.05,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Image.asset(
                    "images/video.png",
                    height: size.height * 0.026,
                    color: KdarkYellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My files",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: size.height * 0.033,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white60,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.height * 0.026),
                child: Row(
                  children: [
                    Text(
                      "32.9",
                      style: TextStyle(
                        fontSize: size.height * 0.1,
                        color: KprimaryWhite,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      height: size.height * 0.06,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Gb",
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              color: Colors.white30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Used",
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              color: Colors.white30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: size.height * 0.06,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "233.1 Gb",
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              color: Colors.white30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Free",
                            style: TextStyle(
                              fontSize: size.height * 0.02,
                              color: Colors.white30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              CustomSlider(),
            ],
          ),
        ),
      );
    });
  }
}
