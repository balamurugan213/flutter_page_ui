import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_ui/Pages/user_creator/info_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Positioned(
        right: 0,
        top: 1000,
        child: DraggableFab(
          initPosition: Offset(MediaQuery.of(context).size.width + 100, 600),
          child: FloatingActionButton(
            onPressed: () => {},
            child: const Text('Action'),
          ),
        ),
      ),
      body: const InfoPage(),
    );
  }
}
