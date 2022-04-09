import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:flutter/material.dart';

class StorageInfoTile extends StatelessWidget {
  final int percentage;
  final String title;
  final Color tileColor;
  StorageInfoTile(
      {required this.title, required this.percentage, required this.tileColor});
  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(builder: (context, size) {
      return Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.009,
        ),
        child: SizedBox(
          width: size.width * 0.4,
          child: Row(
            children: [
              Container(
                height: size.height * 0.01,
                width: size.height * 0.01,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: tileColor,
                ),
              ),
              SizedBox(
                width: size.width * 0.028,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: size.height * 0.019,
                  color: Colors.grey.shade600,
                ),
              ),
              Spacer(),
              Text(
                "${percentage}%",
                style: TextStyle(
                  fontSize: size.height * 0.018,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
