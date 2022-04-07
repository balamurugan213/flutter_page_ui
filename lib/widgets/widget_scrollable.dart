import 'package:flutter/material.dart';

class WidgetScrollable extends StatelessWidget {
  const WidgetScrollable(
      {Key? key, required this.childwidget, required this.height})
      : super(key: key);
  final Widget childwidget;
  final int height;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.height > height) {
      return childwidget;
    }
    return SingleChildScrollView(child: childwidget);
  }
}
