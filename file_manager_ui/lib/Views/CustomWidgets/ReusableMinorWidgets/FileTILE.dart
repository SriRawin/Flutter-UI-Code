import 'package:file_manager_ui/Utils/constants.dart';
import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:flutter/material.dart';

class FileTile extends StatelessWidget {
  final String title;
  final String date;
  final String fileSize;
  final FileType fileType;
  FileTile({
    required this.fileType,
    required this.date,
    required this.title,
    required this.fileSize,
  });
  String pickFile(FileType curr) {
    switch (curr) {
      case FileType.Song:
        return "images/music-icon.png";
      case FileType.Photo:
        return "images/images-icon.png";
      case FileType.Video:
        return "images/video-icon.png";
      case FileType.PDF:
        return "images/pdf-icon.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(
      builder: (context, size) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: size.height * 0.02,
          ),
          child: Container(
            height: size.height * 0.05,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(size.height * 0.012),
                  decoration: BoxDecoration(
                    color: KliteYellow,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.asset(
                    pickFile(fileType),
                    color: KdarkYellow,
                    width: size.width * 0.06,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: size.height * 0.022,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        "${fileSize} ${date}",
                        style: TextStyle(
                          fontSize: size.height * 0.018,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
