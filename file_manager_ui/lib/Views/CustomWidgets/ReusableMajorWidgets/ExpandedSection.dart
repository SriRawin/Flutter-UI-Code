import 'package:file_manager_ui/Utils/constants.dart';
import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMinorWidgets/CustomProgressIndicator.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMinorWidgets/StorageCard.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMinorWidgets/StorageInfoTile.dart';
import 'package:flutter/material.dart';

class ExpandedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(builder: (context, size) {
      return Container(
        color: KprimaryWhite,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 56,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My files",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: size.height * 0.033,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.grey.shade600,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.height * 0.026,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomProgressIndicator(
                          val: 0.88,
                          width: 6,
                          size: size.height * 0.15,
                          trackColor: KprimaryPurple,
                        ),
                        CustomProgressIndicator(
                          val: 0.84,
                          width: 5,
                          size: size.height * 0.11,
                          trackColor: KdarkGreen,
                        ),
                        CustomProgressIndicator(
                          val: 0.6,
                          width: 4,
                          size: size.height * 0.07,
                          trackColor: KdarkYellow,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        StorageInfoTile(
                          title: "Photos",
                          tileColor: KprimaryPurple,
                          percentage: 56,
                        ),
                        StorageInfoTile(
                          title: "Media",
                          tileColor: KdarkGreen,
                          percentage: 32,
                        ),
                        StorageInfoTile(
                          title: "Documents",
                          tileColor: KdarkYellow,
                          percentage: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  children: [
                    StorageCard(
                      title: "Images",
                      numOfItems: 682,
                      securityType: SecurityType.Private,
                      cardTye: FileType.Photo,
                    ),
                    StorageCard(
                      title: "Media",
                      numOfItems: 78,
                      securityType: SecurityType.Public,
                      cardTye: FileType.Video,
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
