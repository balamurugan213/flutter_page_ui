import 'package:flutter/material.dart';
import 'package:flutter_page_ui/Pages/user_creator/info_page.dart';
import 'package:flutter_page_ui/widgets/responsiv.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InfoPage(),
    );
  }
}
