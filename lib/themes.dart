import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

const darkPrimary = Color(0xff1A1A1A);
const darkSecondary = Color(0xff303030);
const lightPrimary = Color(0xffF0F5F9);
const lightSecondary = Color(0xff9CA3B5);

const materialColor = MaterialColor(
  0xff9CA3B5,
  <int, Color>{
    50: Color(0xffF0F5F9),
    100: Color(0xffEBF0FF),
    200: Color(0xffD9E4FF),
    300: Color(0xffD4DCEF),
    400: Color(0xff9CA3B5),
    500: Color(0xff9197A6),
    600: Color(0xff7C8290),
    700: Color(0xff52555D),
    800: Color(0xff303030),
    900: Color(0xff1A1A1A),
  },
);

TextTheme textThemes = TextTheme(
  headline1: GoogleFonts.roboto(
    // color: Colors.red,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  ),
  headline2: GoogleFonts.roboto(
    color: darkPrimary,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  ),
  headline3: GoogleFonts.roboto(
    // color: Color.fromARGB(255, 244, 209, 54),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  ),
  headline4: GoogleFonts.roboto(
    color: darkPrimary,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  ),
  headline5: GoogleFonts.roboto(
    // color: Color.fromARGB(255, 120, 54, 244),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  ),
  headline6: GoogleFonts.roboto(
    // color: Color.fromARGB(255, 244, 54, 165),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  ),
  headlineLarge: GoogleFonts.roboto(
    // color: Color.fromARGB(255, 244, 146, 54),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  ),
);

TextTheme textThemesForDark = TextTheme(
  headline1: GoogleFonts.roboto(
    // color: Colors.red,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  ),
  headline2: GoogleFonts.roboto(
    color: lightPrimary,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.normal,
  ),
  headline3: GoogleFonts.roboto(
    // color: Color.fromARGB(255, 244, 209, 54),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  ),
  headline4: GoogleFonts.roboto(
    color: lightPrimary,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  ),
  headline5: GoogleFonts.roboto(
    // color: Color.fromARGB(255, 120, 54, 244),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  ),
  headline6: GoogleFonts.roboto(
    // color: Color.fromARGB(255, 244, 54, 165),
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  ),
  headlineLarge: GoogleFonts.roboto(
    // color: Color.fromARGB(255, 244, 146, 54),
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  ),
);

ThemeData lightBee = ThemeData(
    // *slider*
    // sliderTheme: const SliderThemeData(
    //     thumbColor: Colors.green,
    //     thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20)),

    // *Toggle Button*
    toggleButtonsTheme: const ToggleButtonsThemeData(
      color: Colors.yellow,
      fillColor: Colors.red,
    ),

    // *Switch-theme*
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all<Color>(lightPrimary),
      thumbColor: MaterialStateProperty.all<Color>(lightSecondary),
      // overlayColor: MaterialStateProperty.all<Color>(Colors.yellow),
    ),
    primarySwatch: materialColor,
    primaryColorDark: const Color(0xff936F3E),
    brightness: Brightness.light,
    // *visual-density*
    visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),

    // *appbar-theme*
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff1A1A1A),
      elevation: 10,
      foregroundColor: lightPrimary,
      // color: lightPrimary,
    ),
    // *Color-for-themes*
    scaffoldBackgroundColor: const Color(0xffF0F5F9),
    primaryColor: const Color(0xff303030),
    dividerColor: const Color(0xffF0F5F9),
    focusColor: const Color(0xffF0F5F9),
    disabledColor: Colors.red,
    fontFamily: 'Roboto',
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(),
    ),
    textTheme: textThemes
    // textTheme: GoogleFonts.robotoTextTheme(),
    // textTheme: TextTheme(
    //   displayLarge: GoogleFonts.roboto(
    //       fontWeight: FontWeight.w900,
    //       color: Color.fromARGB(255, 38, 1, 243),
    //       fontSize: 52,
    //       fontStyle: FontStyle.normal),
    //   displayMedium: GoogleFonts.roboto(
    //       fontWeight: FontWeight.w900,
    //       color: Colors.red,
    //       fontSize: 36,
    //       fontStyle: FontStyle.normal),
    //   displaySmall: GoogleFonts.roboto(
    //       fontWeight: FontWeight.w900,
    //       color: Color.fromARGB(255, 255, 217, 0),
    //       fontSize: 28,
    //       fontStyle: FontStyle.normal),
    //   headlineLarge: GoogleFonts.roboto(
    //       fontWeight: FontWeight.w900,
    //       textBaseline: TextBaseline.alphabetic,
    //       color: Color.fromARGB(255, 255, 217, 0),
    //       fontSize: 52,
    //       fontStyle: FontStyle.normal),
    //   bodyLarge: GoogleFonts.roboto(
    //       fontWeight: FontWeight.w900,
    //       color: Colors.red,
    //       fontSize: 44,
    //       fontStyle: FontStyle.normal),
    //   bodySmall: GoogleFonts.roboto(
    //       fontWeight: FontWeight.w900,
    //       color: Colors.red,
    //       fontSize: 44,
    //       fontStyle: FontStyle.normal),
    //   bodyMedium: GoogleFonts.roboto(
    //       fontWeight: FontWeight.w900,
    //       color: Colors.red,
    //       fontSize: 44,
    //       fontStyle: FontStyle.normal),
    //   titleLarge: GoogleFonts.roboto(
    //       fontWeight: FontWeight.w900,
    //       color: Color.fromARGB(255, 10, 151, 194),
    //       fontSize: 44,
    //       fontStyle: FontStyle.normal),
    // ),
    );

ThemeData darkBee = ThemeData(
  // brightness: Brightness.light,
  visualDensity: const VisualDensity(vertical: 0.5, horizontal: 0.5),
  // *Appbar*
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xff303030),
    elevation: 10,
    foregroundColor: lightPrimary,
  ),
  // *Switch-theme*
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(lightSecondary),
    thumbColor: MaterialStateProperty.all<Color>(lightPrimary),
  ),
  primarySwatch: materialColor,
  primaryColorLight: const Color(0x1a311F06),
  cardColor: const Color.fromARGB(170, 43, 43, 43),
  scaffoldBackgroundColor: const Color(0xff1A1A1A),
  primaryColor: const Color(0xffBFC7DB),
  canvasColor: const Color(0xff6B707A),
  dividerColor: const Color(0xffF0F5F9),
  focusColor: const Color(0xffF0F5F9),
  // buttonTheme: ButtonTheme(buttonColor: ,)
  disabledColor: const Color(0xff6B707A),

  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xff9CA3B5),
    onPrimary: Color(0xffF0F5F9),
    secondary: Color(0xff9CA3B5),
    onSecondary: Color(0xff1A1A1A),
    background: Color(0xff1A1A1A),
    error: Colors.red,
    onBackground: Color(0xffF0F5F9),
    onError: Colors.redAccent,
    surface: Color(0xff9CA3B5),
    onSurface: Color(0xff6B707A),
  ),
  textTheme: textThemesForDark,

  // textTheme: TextTheme(
  //   headline1: GoogleFonts.roboto(
  //     textStyle: TextStyle(color: Colors.white),
  //   ),
  // ),
  // primaryTextTheme: TextTheme(
  //   headline1: GoogleFonts.roboto(
  //     textStyle: TextStyle(color: Colors.white),
  //   ),
  // ),
);
