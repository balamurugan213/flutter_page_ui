import 'package:flutter/material.dart';

class WidgetScrollable extends StatelessWidget {
  const WidgetScrollable(
      {Key? key, required this.childWidget, required this.height})
      : super(key: key);
  final Widget childWidget;
  final int height;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height > height) {
      return childWidget;
    }
    return SingleChildScrollView(child: childWidget);
  }
}
