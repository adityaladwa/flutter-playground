import 'package:flutter/material.dart';
import 'package:flutter_playground/animation/animated_align.dart';
import 'package:flutter_playground/animation/annimation_builder.dart';

class AnimationHomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: "/",
      routes: {
        "/": (c) => AnimationHome(),
        "Animated Align": (c) => AnimatedAlignWidget(),
        "Animation Builder": (c) => AnimationBuilderWidget()
      },
    );
  }
}

class AnimationHome extends StatelessWidget {
  final items = ["Animated Align", "Animation Builder"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.pushNamed(context, items[index]);
            },
          );
        },
      ),
    );
  }
}
