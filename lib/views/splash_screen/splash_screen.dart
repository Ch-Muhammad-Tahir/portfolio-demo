import 'dart:async';
import 'dart:ffi';

import 'package:portfolio_01/views/mobile_view/home_page/home_screen_widget.dart';
import 'package:portfolio_01/views/splash_screen/splash_screen_widgets.dart/logo_rotation.dart';

import '../../utils/app_assets.dart';

import 'package:flutter/material.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  @override
  State<SplashScreenWidget> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreenWidget>
    with TickerProviderStateMixin {
  late Animation<Color?> textColorAnimation;
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();

    textColorAnimation =
        ColorTween(begin: Colors.transparent, end: Colors.white).animate(
      CurvedAnimation(parent: controller, curve: Curves.easeInOut),
    );
    super.initState();
    Timer(
        const Duration(seconds: 7),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const HomePageScreenWidget())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.centerLeft,
              colors: [
            Colors.orange,
            Colors.pink,
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoRotationWidget(
                  controller: controller,
                  image: AppAssets.logo,
                ),
                const SizedBox(
                  height: 20,
                ),
                TweenAnimationBuilder(
                  curve: Curves.ease,
                  tween: Tween<double>(begin: 0, end: 35),
                  builder: (context, value, widgetChild) {
                    return Text(
                      "vFAIRS",
                      style: TextStyle(fontSize: value, color: Colors.white),
                    );
                  },
                  duration: const Duration(seconds: 4),
                ),
              ])),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
