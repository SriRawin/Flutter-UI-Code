import 'package:electric_scooter_app/const.dart';
import 'package:electric_scooter_app/responsive_template.dart';
import 'package:electric_scooter_app/screens/menu.dart';
import 'package:electric_scooter_app/screens/scooter_screen.dart';
import 'package:flutter/material.dart';

import 'maps_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController menuController;
  Animation menuAnimation;
  double mapDragPercent = 0.0;
  @override
  void initState() {
    menuController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600))
          ..addListener(() {
            setState(() {});
          });
    menuAnimation = CurvedAnimation(parent: menuController, curve: Curves.ease);
    super.initState();
  }

  void _onMenuSelected(MenuItem idx) {
    switch (idx) {
      case MenuItem.home:
        if (menuController.isCompleted) menuController.reverse();
        break;
      case MenuItem.battery:
        menuController.forward();
        break;
      default:
        return;
    }
  }

  @override
  void dispose() {
    menuController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveTemplate(builder: (context, size) {
        return Stack(
          children: [
            MenuScreen(
              onMenuSelected: (MenuItem idx) => _onMenuSelected(idx),
              menuSlide: mapDragPercent,
            ),
            MapScreen(
              onChange: (double dragPercent) {
                setState(() {
                  mapDragPercent = dragPercent;
                });
              },
            ),
            FractionalTranslation(
              translation: Offset(mapDragPercent, 0),
              child: ScooterScreen(
                slideOutController: menuController,
              ),
            ),
          ],
        );
      }),
    );
  }
}
