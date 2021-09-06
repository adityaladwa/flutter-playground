import 'package:flutter/material.dart';
import 'package:flutter_playground/animation/animation_home.dart';
import 'package:flutter_playground/home.dart';
import 'package:flutter_playground/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Playground',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: "/",
      routes: {
        "/": (c) => HomePage(),
        "Text": (context) => TextWidget(),
        "Animation": (context) => AnimationHomeWidget()
      },
    );
  }
}
