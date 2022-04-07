import 'package:flutter/material.dart';

class ResponsiveBody extends StatelessWidget {
  final Widget displaySmall;
  final Widget displayLarge;

  const ResponsiveBody({
    Key? key,
    required this.displaySmall,
    required this.displayLarge,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isDisplaySmall(BuildContext context) =>
      MediaQuery.of(context).size.height < 860;

  // static bool isTablet(BuildContext context) =>
  //     MediaQuery.of(context).size.width < 1100 &&
  //     MediaQuery.of(context).size.width >= 650;

  static bool isDisplayLarge(BuildContext context) =>
      MediaQuery.of(context).size.height >= 859;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.height >= 956) {
      return displayLarge;
    }
    // Or less then that we called it mobile
    else {
      return displaySmall;
    }
  }
}
