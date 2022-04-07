import 'package:flutter/material.dart';

Route createRoute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    // transitionsBuilder: (context, animation, secondaryAnimation, child) {
    //   return child;
    // },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
// return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => const Page2(),
    
//   );