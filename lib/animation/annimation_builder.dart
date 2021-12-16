import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimationBuilderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimationBuilderWidgetState();
}

class _AnimationBuilderWidgetState extends State<AnimationBuilderWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat();

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Builder"),
      ),
      body: AnimatedBuilder(
        animation: _animationController,
        child: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
        builder: (BuildContext context, Widget? child) {
          return Transform.rotate(
            angle: _animationController.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
