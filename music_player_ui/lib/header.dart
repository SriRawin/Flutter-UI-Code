import 'package:flutter/material.dart';
import 'data.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: customShadow,
            ),
            child: Icon(
              Icons.chevron_left,
              color: iconColor,
              size: 35,
            ),
          ),
          Text(
            'Playing Now',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: iconColor,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(14),
              boxShadow: customShadow,
            ),
            child: Icon(
              Icons.menu,
              color: iconColor,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
