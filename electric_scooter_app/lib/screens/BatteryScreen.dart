import 'package:electric_scooter_app/const.dart';
import 'package:electric_scooter_app/responsive_template.dart';
import "package:flutter/material.dart";

class BatteryScreen extends StatefulWidget {
  final Animation<double> bikeFade;
  BatteryScreen({this.bikeFade});
  @override
  _BatteryScreenState createState() => _BatteryScreenState();
}

class _BatteryScreenState extends State<BatteryScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(
      builder: (context, size) {
        return FractionalTranslation(
          translation: Offset(1 - widget.bikeFade.value, 0),
          child: FadeTransition(
            opacity: widget.bikeFade,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Center(),
                SizedBox(
                  height: size.height * 0.3,
                  child: Image.asset(
                    "images/charging.png",
                  ),
                ),
                SizedBox(
                  height: size.height * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlashCards(
                            size: size,
                            imgPath: "icons/battery.png",
                            title: "Charge",
                            content: "75",
                            powerText: "%",
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          FlashCards(
                            size: size,
                            imgPath: "icons/distance.png",
                            title: "Range",
                            content: "90",
                            powerText: "km",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.018,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: FlashMsg(
                              size: size,
                              title: "Last Charged",
                              content: "10:25",
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Expanded(
                            child: FlashMsg(
                              size: size,
                              title: "Average speed",
                              content: "60 km/h",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class FlashCards extends StatelessWidget {
  final SizeInfo size;
  final String imgPath;
  final String title;
  final String content;
  String powerText;
  FlashCards(
      {this.size, this.imgPath, this.title, this.content, this.powerText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            size.height * 0.015,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02,
          vertical: size.height * 0.03,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  height: size.height * 0.07,
                  child: Image.asset(
                    imgPath,
                    color: Kblue,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: size.height * 0.026,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      content,
                      style: TextStyle(
                        fontSize: size.height * 0.09,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      powerText,
                      style: TextStyle(
                        fontSize: size.height * 0.026,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: size.width * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}

class FlashMsg extends StatelessWidget {
  final SizeInfo size;
  final String title;
  final String content;

  FlashMsg({this.size, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          size.height * 0.015,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.06,
        vertical: size.height * 0.03,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: size.height * 0.022,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            content,
            style: TextStyle(
              fontSize: size.height * 0.038,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
