import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Align"),
      ),
      body: GestureDetector(
        onTap: () => {
          setState(() {
            selected = !selected;
          })
        },
        child: Center(
          child: AnimatedAlign(
            alignment: selected ? Alignment.bottomLeft : Alignment.topRight,
            duration: const Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 50.0),
          ),
        ),
      ),
    );
  }
}
