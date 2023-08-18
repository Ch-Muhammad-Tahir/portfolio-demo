import 'dart:math' as math;
import 'package:flutter/material.dart';

class LogoRotationWidget extends StatelessWidget {
  final AnimationController controller;
  final String image;
  const LogoRotationWidget(
      {super.key, required this.controller, required this.image});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          filterQuality: FilterQuality.high,
          angle: controller.value * 1 * math.pi,
          child: Center(
            child: Image.asset(
              image,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
