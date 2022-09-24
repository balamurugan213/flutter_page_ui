import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_page_ui/project_links.dart';
import 'package:flutter_page_ui/services/theme_bloc.dart';
import 'package:flutter_page_ui/widgets/responsive.dart';
import 'package:flutter_page_ui/widgets/responsive_body.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectGrids extends StatefulWidget {
  const ProjectGrids({Key? key, required this.themes}) : super(key: key);

  final ThemeBloc themes;

  @override
  State<ProjectGrids> createState() => _ProjectGridsState();
}

class _ProjectGridsState extends State<ProjectGrids> {
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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: ResponsiveBody.isDisplaySmall(context)
                ? CrossAxisAlignment.stretch
                : CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveWidget.isTablet(context) ? 30 : 16),
                child: SizedBox(width: 1200, child: buildGrid(context)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  StaggeredGrid buildGrid(BuildContext context) {
    return StaggeredGrid.count(
        crossAxisCount: ResponsiveWidget.isMobile(context)
            ? 1
            : ResponsiveWidget.isTablet(context)
                ? 2
                : 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: projectList.map((e) => GridItems(data: e)).toList());
  }
}

class GridItems extends StatefulWidget {
  const GridItems({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Project data;
  @override
  State<GridItems> createState() => _GridItemsState();
}

class _GridItemsState extends State<GridItems> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          widget.data.urlPath,
        );
      },
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      child: AnimatedPadding(
        padding: EdgeInsets.all((isHover) ? 30 : 16.0),
        duration: const Duration(milliseconds: 300),
        child: AnimatedContainer(
          // padding: EdgeInsets.only(
          //     top: (isHover) ? 25 : 30.0, bottom: !(isHover) ? 25 : 30),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 159, 179, 189),
            borderRadius: BorderRadius.circular((isHover) ? 0 : 10),
          ),

          duration: const Duration(milliseconds: 300),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular((isHover) ? 0 : 10),
                topRight: Radius.circular((isHover) ? 0 : 10),
              ),
              child: Image(
                image: AssetImage(widget.data.imgPath),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 4, left: 16),
              child: Text(
                widget.data.title,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                widget.data.details,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(
              height: 16,
            )
          ]),
          // width: 100,
        ),
      ),
    );
  }
}
