import 'package:file_manager_ui/Utils/constants.dart';
import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StorageCard extends StatelessWidget {
  final FileType cardTye;
  final SecurityType securityType;
  final String title;
  final int numOfItems;
  StorageCard({
    required this.cardTye,
    required this.securityType,
    required this.title,
    required this.numOfItems,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(
      builder: (context, size) {
        return Container(
          margin: EdgeInsets.only(
            left: size.width * 0.05,
            bottom: size.width * 0.05,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.052,
            vertical: size.width * 0.09,
          ),
          height: double.maxFinite,
          width: size.width * 0.52,
          decoration: BoxDecoration(
            color: cardTye == FileType.Photo ? KliteGreen : KliteYellow,
            borderRadius: BorderRadius.circular(
              size.height * 0.03,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 6,
                      spreadRadius: 1,
                      color: cardTye == FileType.Photo
                          ? KdarkGreen.withOpacity(0.36)
                          : KdarkYellow.withOpacity(0.36),
                    ),
                  ],
                ),
                child: Image.asset(
                  cardTye == FileType.Photo
                      ? "images/photo.png"
                      : "images/video.png",
                  color: cardTye == FileType.Photo ? KdarkGreen : KdarkYellow,
                  width: size.height * 0.048,
                ),
              ),
              Spacer(),
              Text(
                title,
                style: TextStyle(
                  fontSize: size.height * 0.03,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.02,
                ),
                child: Text(
                  "${numOfItems} items",
                  style: TextStyle(
                    fontSize: size.height * 0.022,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    securityType == SecurityType.Private
                        ? Icons.lock_outlined
                        : Icons.lock_open_outlined,
                    size: size.height * 0.022,
                    color: securityType == SecurityType.Private
                        ? KdarkGreen
                        : KdarkYellow,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    securityType == SecurityType.Private
                        ? "Private Folder"
                        : "Public Folder",
                    style: TextStyle(
                      fontSize: size.height * 0.018,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
