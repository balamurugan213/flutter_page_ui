import 'package:flutter/material.dart';
import 'package:flutter_page_ui/widgets/responsive_body.dart';
import 'package:flutter_page_ui/widgets/widget_scrollable.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: const Color(0xFFA7CCC6),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: WidgetScrollable(
              childWidget: _buildContent(context),
              height: 650,
            )),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _topNavigation(),
          _loginForm(context),
          const SizedBox(
            height: 20,
          ),
          Container(
            color: const Color.fromARGB(255, 253, 181, 0),
            height: 100,
          )
        ]);
  }

  SizedBox _loginForm(BuildContext context) {
    return SizedBox(
      width: 1000,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "SIGN IN",
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0)),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: Text(
                "Sign up or login to see our top picks for you",
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.normal,
                    color: const Color.fromARGB(255, 41, 41, 41)),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            TextField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintStyle: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 41, 41, 41)),
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintStyle: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 41, 41, 41)),
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 41, 41, 41),
                  textStyle: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 41, 41, 41)),
                  onPrimary: Colors.white),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _topNavigation() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
          TextButton(
              onPressed: () {},
              child: const Text('Sign up'),
              style: TextButton.styleFrom(
                primary: const Color.fromARGB(255, 61, 61, 61),
                textStyle: Theme.of(context).textTheme.headline6?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ))
        ],
      ),
    );
  }
}
