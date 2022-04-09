import 'package:file_manager_ui/Utils/responsive_template.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMajorWidgets/CollapsedSection.dart';
import 'package:file_manager_ui/Views/CustomWidgets/ReusableMajorWidgets/ExpandedSection.dart';
import 'package:flutter/material.dart';

class CustomFlexibleSpace extends StatelessWidget {
  final SizeInfo size;
  CustomFlexibleSpace({required this.size});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double top = constraints.biggest.height;

      return FlexibleSpaceBar(
        centerTitle: true,
        title: AnimatedOpacity(
          duration: Duration(milliseconds: 100),
          curve: Curves.easeIn,
          opacity: top <= size.height * 0.46 ? 1 : 0,
          child: CollapsedSection(),
        ),
        background: ExpandedSection(),
      );
    });
  }
}
