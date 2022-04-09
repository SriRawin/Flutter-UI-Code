import 'package:file_manager_ui/Model/listOfFiles.dart';
import 'package:file_manager_ui/Utils/constants.dart';
import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMajorWidgets/CustomFlexibleSpace.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMinorWidgets/CustomAppbar.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMinorWidgets/CustomFAB.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMinorWidgets/FileTILE.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryWhite,
      floatingActionButton: CustomFAB(),
      body: ResponsiveTemplate(
        builder: (context, size) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 0,
                backgroundColor: KprimaryPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(size.height * 0.038),
                  ),
                ),
                pinned: true,
                title: CustomAppBar(
                  size: size,
                ),
                flexibleSpace: CustomFlexibleSpace(size: size),
                expandedHeight: size.height * 0.68,
                collapsedHeight: size.height * 0.36,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.05,
                          vertical: size.height * 0.01),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Latest files",
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
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Column(
                            children: customFiles
                                .map(
                                  (customFile) => FileTile(
                                    fileType: customFile.type,
                                    date: customFile.date,
                                    title: customFile.name,
                                    fileSize: customFile.size,
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
