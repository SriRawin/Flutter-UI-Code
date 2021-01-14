import 'package:flutter/material.dart';

Color primaryColor = Color(0xffcadced);
List<BoxShadow> customShadow = [
  BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      offset: Offset(-5, -5),
      blurRadius: 30),
  BoxShadow(
      color: Colors.blue[900].withOpacity(0.2),
      spreadRadius: 2,
      offset: Offset(7, 7),
      blurRadius: 20),
];

List<String> cardNumber = ["**** **** **** 1510 ", "**** **** **** 2310 "];
List<String> cardType = ['Platinum Card', 'Visa'];
List<Color> pieChartColors = [
  Colors.indigo[400],
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.brown
];
List<Map> expenses = [
  {'name': 'Groceries', 'amount': 500},
  {'name': 'Online Shopping', 'amount': 100},
  {'name': 'Eating out', 'amount': 80},
  {'name': 'Bills', 'amount': 50},
  {'name': 'Subscriptions', 'amount': 100},
  {'name': 'Fees', 'amount': 30},
];
