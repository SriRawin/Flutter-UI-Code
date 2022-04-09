import 'package:file_manager_ui/Utils/constants.dart';
import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final SizeInfo size;
  CustomAppBar({required this.size});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.all(size.height * 0.006),
              child: Icon(
                Icons.person,
                color: KprimaryPurple,
                size: size.height * 0.024,
              ),
              decoration: BoxDecoration(
                  color: KlitePurple,
                  shape: BoxShape.circle,
                  border: Border.all(color: KprimaryPurple)),
            ),
          ],
        ),
      ],
    );
  }
}
