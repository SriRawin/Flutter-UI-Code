import 'package:electric_scooter_app/const.dart';
import 'package:electric_scooter_app/responsive_template.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  final ValueChanged<MenuItem> onMenuSelected;
  final double menuSlide;
  MenuScreen({this.onMenuSelected, this.menuSlide});
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  MenuItem selectedItem = MenuItem.home;

  @override
  @override
  Widget build(BuildContext context) {
    return ResponsiveTemplate(
      builder: (context, size) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [0.3, 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0xff295CBA),
                Color(0x703f84d7),
              ],
            ),
          ),
          child: SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  left: (size.width * 0.036) * -widget.menuSlide +
                      size.width * 0.036,
                  child: SizedBox(
                    height: size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuIcon(
                          color: Colors.black54,
                          path: "icons/menu.png",
                          Hpercent: size.height * 0.031,
                          onTap: () {},
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        MenuIcon(
                          color: Colors.white,
                          path: "icons/home.png",
                          Hpercent: size.height * 0.038,
                          onTap: () {
                            setState(() {
                              selectedItem = MenuItem.home;
                              widget.onMenuSelected(selectedItem);
                            });
                          },
                          isSelected:
                              selectedItem == MenuItem.home ? true : false,
                        ),
                        MenuIcon(
                          color: Colors.white,
                          path: "icons/battery.png",
                          Hpercent: size.height * 0.04,
                          onTap: () {
                            setState(() {
                              selectedItem = MenuItem.battery;
                              widget.onMenuSelected(selectedItem);
                            });
                          },
                          isSelected:
                              selectedItem == MenuItem.battery ? true : false,
                        ),
                        MenuIcon(
                          color: Colors.white,
                          path: "icons/scan.png",
                          Hpercent: size.height * 0.04,
                          onTap: () {
                            setState(() {
                              selectedItem = MenuItem.scan;
                            });
                          },
                          isSelected:
                              selectedItem == MenuItem.scan ? true : false,
                        ),
                        MenuIcon(
                          color: Colors.white,
                          path: "icons/map.png",
                          Hpercent: size.height * 0.032,
                          onTap: () {
                            setState(() {
                              selectedItem = MenuItem.map;
                            });
                          },
                          isSelected:
                              selectedItem == MenuItem.map ? true : false,
                        ),
                        SizedBox(
                          height: size.height * 0.52,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class MenuIcon extends StatelessWidget {
  Color color;
  String path;
  double Hpercent;
  Function onTap;
  bool isSelected;

  MenuIcon({
    this.path,
    this.color,
    this.Hpercent,
    this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.easeIn,
              transformAlignment: Alignment.center,
              transform: Matrix4.translationValues(0, 0, 0)
                ..scale(
                  isSelected ? 1.0 : 0.01,
                ),
              height: height * 0.07,
              width: height * 0.07,
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: isSelected
                    ? Colors.white.withOpacity(0.18)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(
                  height * 0.02,
                ),
              ),
            ),
            Container(
              height: Hpercent ?? height * 0.034,
              child: Image.asset(
                path,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
