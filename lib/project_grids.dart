import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_page_ui/services/theme_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectGrids extends StatefulWidget {
  const ProjectGrids({Key? key, required this.themes}) : super(key: key);

  final ThemeBloc themes;

  @override
  State<ProjectGrids> createState() => _ProjectGridsState();
}

class _ProjectGridsState extends State<ProjectGrids> {
  var color = [
    const Color(0xFF827397),
    const Color(0xFF4D4C7D),
    const Color(0xFFE9D5DA),
    const Color(0xFF363062),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE UI"),
        actions: [
          Switch(
            value: widget.themes.themeMode == ThemeMode.dark,
            onChanged: (newValue) => widget.themes.toggleTheme(newValue),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          width: 1000,
          child: buildGrid(context),
        ),
      ),
    );
  }

  StaggeredGrid buildGrid(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: [
        // for (int i = 0; i < 20; i++)
        const GridItems(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: color[3],

            child: Column(children: const [
              Image(
                image: AssetImage("wallet.jpg"),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 200,
              )
            ]),
            // width: 100,
          ),
        ),
      ],
    );
  }
}

class GridItems extends StatelessWidget {
  const GridItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/user_creator',
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 159, 179, 189),
            // borderRadius: BorderRadius.circular(10),
          ),

          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Image(
              image: AssetImage("user_creator.jpg"),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "User Creator",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ]),
          // width: 100,
        ),
      ),
    );
  }
}
