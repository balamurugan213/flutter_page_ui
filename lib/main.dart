import 'package:flutter/material.dart';
// import 'package:flutter_page_ui/Pages/user_creator/homepage.dart';
// import 'package:flutter_page_ui/Pages/user_creator/login_page.dart';
import 'package:flutter_page_ui/Pages/user_creator/mainpage.dart';
import 'package:flutter_page_ui/Pages/wallet_app/wallet_page.dart';
import 'package:flutter_page_ui/loading_page.dart';
import 'package:flutter_page_ui/project_grids.dart';
import 'package:flutter_page_ui/services/theme_bloc.dart';
import 'package:flutter_page_ui/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeBloc themes = ThemeBloc();

  // This widget is the root of your application.
  @override
  void dispose() {
    themes.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    themes.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: themes.getPageTheme,
      darkTheme: darkBee,
      themeMode: themes.themeMode,
      routes: {
        '/': (context) => ProjectGrids(
              themes: themes,
            ),
        // WalletHomePage(),
        '/user_creator': (context) => const MainPage(),
        '/wallet_page': (context) => const WalletHomePage(),
        '/loading': (context) => const LoadingPage()
      },
      // LoginPage(),
      // Homepage()
    );
  }
}
