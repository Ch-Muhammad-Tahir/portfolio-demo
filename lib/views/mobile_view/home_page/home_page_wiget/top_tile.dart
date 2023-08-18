import 'package:flutter/material.dart';
import 'package:portfolio_01/utils/app_assets.dart';

import 'package:portfolio_01/views/mobile_view/home_page/home_page_wiget/intro_text_widget.dart';

class IntroTopTile extends StatefulWidget {
  const IntroTopTile({super.key});

  @override
  State<IntroTopTile> createState() => _IntroTopTileState();
}

class _IntroTopTileState extends State<IntroTopTile>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceIn,
    );
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.sizeOf(context).width;
    return SizeTransition(
      sizeFactor: _animation,
      axis: Axis.horizontal,
      axisAlignment: -1,
      child: SizedBox(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const IntorTextWidget(),
            CircleAvatar(
              radius: size * 0.172,
              backgroundImage: AssetImage(AppAssets.profileImage),
            )
          ],
        ),
      ),
    );
  }
}
