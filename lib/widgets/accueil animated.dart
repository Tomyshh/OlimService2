import 'package:flutter/material.dart';
import 'delayed_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FlutterLogo(
              size: 200,
            ),
          )),
    );
  }
}
