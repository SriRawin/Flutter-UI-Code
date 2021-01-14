import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data.dart';

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Monthly Expenses",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Icon(
                    Icons.chevron_left_outlined,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    boxShadow: customShadow,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child: Icon(
                    Icons.chevron_right_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: expenses
                            .map(
                              (e) => Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor:
                                        pieChartColors[expenses.indexOf(e)],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    e['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17,
                                        color: Colors.black.withOpacity(0.6)),
                                  ),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: customShadow,
                              color: primaryColor,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: CustomPaint(
                              painter: PieChartPainter(),
                              child: Center(),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: customShadow,
                                color: primaryColor,
                              ),
                              child: Center(
                                  child: Text(
                                '\$1280',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var startAngle = -pi / 2;
    var total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 40;
    var sweepAngle;
    for (int i = 0; i < expenses.length; i++) {
      sweepAngle = (expenses[i]['amount'] / total) * 2 * pi;
      paint.color = pieChartColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startAngle, sweepAngle, false, paint);

      startAngle += sweepAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
