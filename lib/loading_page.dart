import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              width: 600,
              height: 600,
              child: Image(
                image: AssetImage('extra/loading.png'),
                fit: BoxFit.cover,
              ),
            ),
            Text("I am working on it will be ready soon")
          ],
        ),
      ),
    );
  }
}
