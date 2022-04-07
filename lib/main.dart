import 'package:flutter/material.dart';
import 'package:flutter_page_ui/Pages/user_creator/homepage.dart';
import 'package:flutter_page_ui/Pages/user_creator/login_page.dart';
import 'package:flutter_page_ui/Pages/user_creator/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter UI',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage()
        // LoginPage(),
        // Homepage()
        );
  }
}
