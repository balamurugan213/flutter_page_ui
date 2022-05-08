import 'package:flutter/material.dart';
import 'package:flutter_page_ui/themes.dart';

class ThemeBloc with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  ThemeData _pageTheme = lightBee;
  // ThemeData(
  //   primarySwatch: Colors.blue,
  // );

  get themeMode => _themeMode;

  get getPageTheme => _pageTheme;

  toggleTheme(bool isDark) {
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  updateTheme(ThemeData newTheme) {
    _pageTheme = newTheme;
  }
}
