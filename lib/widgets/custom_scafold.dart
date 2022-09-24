import 'package:flutter/material.dart';
import 'package:flutter_page_ui/services/theme_bloc.dart';

class BuildScaffold extends StatefulWidget {
  const BuildScaffold({Key? key, required this.themes, required this.body})
      : super(key: key);

  final ThemeBloc themes;
  final Widget body;

  @override
  State<BuildScaffold> createState() => _BuildScaffoldState();
}

class _BuildScaffoldState extends State<BuildScaffold> {
  // @override
  // void dispose() {
  //   widget.themes.removeListener(themeListener);
  //   super.dispose();
  // }

  @override
  void initState() {
    // widget.themes.updateTheme();
    // widget.themes.addListener(themeListener);
    super.initState();
  }

  // themeListener() {
  //   if (mounted) {
  //     setState(() {});
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        actions: [
          Switch(
            value: widget.themes.themeMode == ThemeMode.dark,
            onChanged: (newValue) => widget.themes.toggleTheme(newValue),
          )
        ],
        title: appbarTitle(),
      ),
      body: widget.body,
    );
  }

  Widget appbarTitle() {
    return const InkWell(
      // onTap: (),
      child: Text(
        'FLUTTERBEE',
      ),
    );
    //     SizedBox(
    //   width: 50,
    //   height: 50,
    //   child: Image.asset(
    //     'assets/logopng.png',
    //     fit: BoxFit.contain,
    //   ),
    // );
  }
}

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage('assets/drawer-logo.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Text(''),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
